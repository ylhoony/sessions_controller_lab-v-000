class SessionsController < ApplicationController

  def new

  end

  def create
    # binding.pry
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy

  end

end
