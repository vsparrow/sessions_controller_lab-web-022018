class SessionsController < ApplicationController
  def new
  end

  def create
   #  session[:username] = params[:username]
   # redirect_to '/'
   session[:name] = params[:name]
   # puts "*******************#{params[:name].present?}" #got flase when blank
   if session[:name].present?
     redirect_to '/'
    else
      render :new
    end
  end#create

  def destroy
    session.delete :name
    redirect_to '/'
  end
end #class
