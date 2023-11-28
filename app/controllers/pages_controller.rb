class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @groups = Group.all
    @users = User.all
    @users_show = @users.select do |user|
      user.groups.empty? == true
    end
  end
end
