class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    count = 0

    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
    @sum = current_user.members.count { |member| member.status == "pending" }
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

    @sum = current_user.members.count { |member| member.status == "pending" }
  end

private

  def set_user
    @user = User.find(params[:nickname])
  end

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :nickname, :age, :location, :gender, :description, :tags)
  end
end
