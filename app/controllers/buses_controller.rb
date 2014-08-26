class BusesController < ApplicationController
  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def create
    @bus = Bus.new(buses_params)
    if @bus.save
      flash[:notice] = "Bus was added"
      redirect_to buses_path
    else
      render 'new'
    end
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    if @bus.update(bus_params)
      flash[:notice] = "Bus updated."
      redirect_to buses_path(@bus)
    else
      render 'edit'
    end
  end

  def destroy
    @bus = Bus.find(params[:id])
    if @bus.destroy
      flash[:notice] = "The bus was deleted."
      redirect_to buses_path
    end
  end

  private
    def buses_params
      params.require(:bus).permit(:number, :line_id)
    end
end