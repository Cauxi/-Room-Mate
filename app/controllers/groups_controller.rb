class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  def show
    @member = Member.new
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(params_group)
    @group.user = current_user
    if @group.save
      redirect_to group_path(@group)
    else
      render :new, status: unprocessable_entity
    end
  end

  private
  def set_group
    @group = Group.find(params[:id])
  end

  def params_group
    params.require(:group).permit(:status, :user_id)
  end

end
