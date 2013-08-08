class PeopleController < ApplicationController

  before_filter :find_guardian_angel

  def new
    @human = Person.new
  end


  def create
    @human = Person.new(human_params)
    @guardian_angel.person = @human
    @guardian_angel.save
    if @human.save
      PersonMailer.welcome_email(@human).deliver
      flash[:notice] = "Human was successfully created."
      redirect_to [@god, @guardian_angel]
    else
      flash[:alert] = "Human was not successfully created."
      render :action => "new"
    end
  end

  def show
    @person = @guardian_angel.person

  end


private
  def human_params
    params.require(:person).permit(:name, :purpose, :email)
  end

  def find_guardian_angel
    @god = God.find(params[:god_id])
    @guardian_angel = @god.guardian_angels.find(params[:guardian_angel_id])
  end

end
