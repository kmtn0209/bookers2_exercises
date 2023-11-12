class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    @nickname = current_user.name
  end

  def edit
  end


end
