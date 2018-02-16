class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    binding.pry
    if !session[:name].present?
      session[:name] = nil
      redirect_to "/login"
    else
    # session[:name].delete
    end
  end

end
