class UsersController < ApplicationController
  
  def show
    @user = current_user
    @group = current_user.groups
    @members = @group.members
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :nickname, :age, :location, :gender, :description)
  end
end
