class EntriesController < ApplicationController
  before_action :auth_or_redirect!

  def index
    
  end

  def new
    
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def auth_or_redirect
    redirect_to welcome_path unless authenticate_user!
  end
end
