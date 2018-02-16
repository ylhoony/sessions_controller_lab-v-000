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
    # if !session[:name].present?
    #   
    # else
    #   session[:name] = nil
    # end
    session[:name] = nil
    redirect_to "/login"
  end

end
