class GroupsController < ApplicationController
  before_action :set_group, only: [:show]

  def show
    @member = Member.new
    @members_pending = 0
    current_user.groups.each do |group|
      @members_pending += group.members.count { |member| member.status == "pending" }
    end

    @is_user_member = user_member_of_group?

    @sum = current_user.members.count { |member| member.status == "pending" }
  end

  def new
    @group = Group.new
    count = 0
    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
    @sum = current_user.members.count { |member| member.status == "pending" }
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

  def user_member_of_group?
    current_user.member_ids.each do |id|
      result = @group.member_ids.include?(id)
      return true if result
    end
    return false
  end
end
