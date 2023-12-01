class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    count = 0
    current_user.groups.each do |group|
      count += group.members.count { |member| member.status == "pending" }
    end
    @members_pending = count
    @sum = current_user.members.count { |member| member.status == "pending" }
  end

  def new
    @group = Group.find(params[:group_id])
    @chatroom = Chatroom.new
  end

  def create
    @group = Group.find(params[:group_id])
    @chatroom = Chatroom.new(params_chatroom)
    @chatroom.group = @group
    if @chatroom.save
      redirect_to group_path(@group)
    else
      render :new, status: unprocessable_entity
    end
  end

  private
  def params_chatroom
    params.require(:chatroom).permit(:name, :group_id)
  end
end
