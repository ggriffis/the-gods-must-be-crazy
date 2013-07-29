class GuardianAngelsController < ApplicationController

  before_filter :find_god

  def new
    @guardian_angel = @god.guardian_angels.build
  end

  def create
    @guardian_angel = @god.guardian_angels.build(angel_params)
    if @guardian_angel.save
      flash[:notice] = "Guardian angel was successfully created."
      redirect_to @god
    else
      flash[:alert] = "Guardian angel was not successfully created."
      render :action => "new"
    end
  end

  def show
    @guardian_angel = @god.guardian_angels.find(params[:id])
  end

private
  def angel_params
    params.require(:guardian_angel).permit(:name, :top_virtue)
  end


  def find_god
    @god = God.find(params[:god_id])
  end

end
