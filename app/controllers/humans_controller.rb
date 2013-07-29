class HumansController < ApplicationController

  before_filter :find_guardian_angel

  def new
    @human = Human.new
  end

private
  def human_params
    params.require(:human).permit(:name, :purpose)
  end

  def find_guardian_angel
    god = God.find(params[:god_id])
    @guardian_angel = god.guardian_angels.find(params[:guardian_angel_id])
  end

end
