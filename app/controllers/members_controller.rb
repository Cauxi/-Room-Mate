class MembersController < ApplicationController
  before_action :set_group, only: [:new, :create]

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params_member)
    @member.group = @group
    @member.user = current_user
    if @member.save
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def accept
    @member = Member.find(params[:id])
    @member.status = "accepted"
    @member.save
    redirect_to dashboard_path
  end
  def reject
    @member = Member.find(params[:id])
    @member.status = "rejected"
    @member.save
    redirect_to dashboard_path
  end


  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def params_member
    params.require(:member).permit(:status)
  end

end
