class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @groups = Group.all
    # @users = User.all
    # @tags = current_user.tags.split(",")
    @users = User.where(location: current_user.location)
    # @users = User.where(location: current_user.location).where()
    # @users = User.where(location: current_user.location).select do |user|
    #   User.where(user.tags.split(",") & current_user.tags.split(",")).any?
    # end

    if params[:query].present?
      sql_subquery = "name ILIKE :query"
      @groups = @groups.where("name ILIKE ?", "%#{params[:query]}%")
    end

    if params[:query].present?
      sql_subquery = "tags @@ :query OR location @@ :query"
      @users = @users.where(sql_subquery, query: "%#{params[:query]}%")
    end

    @users_show = @users.select do |user|
      user.groups.empty? == true
    end

    if current_user
      count = 0
      current_user.groups.each do |group|
        count += group.members.count { |member| member.status == "pending" }
      end
      @members_pending = count
    end
  end
end
