class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @member = @house.members
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      flash[:success] = 'House successfully added!'
      redirect_to house_path(@house)
    else
      flash[:errors] = @house.errors.full_messages.join(', ')
      render :new
    end
  end

  def house_params
    params.require(:house).permit(:name, :author, :source_material, :motto, :sigil)
  end
end
