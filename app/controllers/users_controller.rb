class UsersController < ApplicationController
  def show
    @user = current_user
    @group = current_user.groups
    @members = @group.members
  end
end
