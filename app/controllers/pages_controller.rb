class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @groups = Group.all
    # @users = User.all
    # @tags = current_user.tags.split(",")
    if user_signed_in?
      @users = User.where(location: current_user.location)
      @users_show = @users.select do |user|
        user.groups.empty? && user.members.where(:status => "accepted").exists? == false
      end
    end

    if params[:query].present?
      @groups = @groups.where("name ILIKE ?", "%#{params[:query]}%")
      @users_show = @users.where("tags ILIKE ?", "%#{params[:query]}%").where.not(id: current_user.id)
    end

    if current_user
      count = 0
      current_user.groups.each do |group|
        count += group.members.count { |member| member.status == "pending" }
      end
      @members_pending = count
      @sum = current_user.members.count { |member| member.status == "pending" }
    end
  end
end
