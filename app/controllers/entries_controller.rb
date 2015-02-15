class EntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    
  end

  def new
    @healthy_things = HealthyThing.all
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

end
