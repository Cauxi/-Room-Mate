class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  def show
    @group = Group.find(params[:id])
    @member = Member.new
    count = 0
    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
  end

  def new
    @group = Group.new
    count = 0
    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
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
    params.require(:group).permit(:name, :user_id)
  end

end
