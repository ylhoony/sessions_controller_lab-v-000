class SessionsController < ApplicationController

  def new

  end

  def create
    # binding.pry
    if params[:name]
      binding.pry
    else
      redirect_to "/login"
    end
  end

  def destroy

  end

end
