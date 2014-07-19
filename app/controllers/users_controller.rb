class UsersController < ApplicationController

  def index
  end

  def show
    @current_user = current_user
  end

  def updated
  end

  def destroy
  end

end
