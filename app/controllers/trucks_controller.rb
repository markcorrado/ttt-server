class TrucksController < ApplicationController
  before_action :authenticate_user!

  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def new
    @truck = Truck.new
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def create
    @truck = Truck.new(truck_params)

    if @truck.save
      redirect_to @truck
    else
      render 'new'
    end
  end

  def update
    @truck = Truck.find(params[:id])

    if @truck.update(truck_params)
      redirect_to @truck
    else
      render 'edit'
    end
  end

  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy

    redirect_to trucks_path
  end

  private
  def truck_params
    params.require(:truck).permit(:title, :text)
  end
end
