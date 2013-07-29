class GodsController < ApplicationController

  def new
    @god = God.new
  end

  def create
    @god = God.new(god_params)
    if @god.save
      flash[:notice] = "God was successfully created."
      redirect_to @god
    else
      flash[:alert] = "God was not successfully created."
      render :action => "new"
    end
  end

  def index
    @gods = God.all.sort_by { |god| god.name}
  end

  def show
    @god = God.find(params[:id])
  end

private
  def god_params
    params.require(:god).permit(:name, :mission_statement)
  end

end
