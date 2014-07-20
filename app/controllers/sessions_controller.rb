class SessionsController < ApplicationController

  def create
    user = request.env["omniauth.auth"]
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  def profile
  	render :profile
  end

def chooseparty
    render :chooseparty
  end

  def issueslist
    render :issueslist
  end

  def pieresult
    render :pieresult
  end

  def finalresults
    render :finalresults
  end

  def login
    render :login
  end

  def fullprofile
    render :fullprofile
  end
  



end
