class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    count = 0

    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
  end

  def dashboard
    @user = current_user
    @groups = current_user.groups
    @members = current_user.members
    count = 0
    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
  end

private

  def set_user
    @user = User.find(params[:nickname])
  end
end
