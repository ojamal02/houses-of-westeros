class MembersController < ApplicationController
  def index
    @house = House.find(params[:house_id])
    @members = @house.members
  end

  def new
    @house = House.find(params[:house_id])
    @member = Member.new
  end

  def create
    @house = House.find(params[:house_id])
    @member = Member.new(member_params)
    @member.house = @house

    if @member.save
      flash[:notice] = "Member saved successfully."
      redirect_to house_path(@house)
    else
      flash[:alert] = "Failed to save member."
      render :new
    end
  end

  def member_params
    params.require(:member).permit(:first_name, :last_name, :title)
  end
end
