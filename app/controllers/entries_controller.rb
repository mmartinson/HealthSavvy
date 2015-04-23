class EntriesController < ApplicationController
  before_action :authenticate_user!

  def index
    current_user.entries.to_json
  end

  def new
    @healthy_things = HealthyThing.all
  end

  def create
    @entries = entries_params
    [*entries].map do |entry| 
      current_user.entries.new(name: entry.name,
                               date: entry.date,
                               healthy_thing_id: entry.healthy_thing_id)
    end
    unless @entry.map(&:save).include? false
      render nothing: true, status: 200
    else
      render nothing: true, status: 422
    end
  end

  def destroy
    @entry = current_user.entries.find paras[:id]
    if @entry.destroy
      render nothing: true, status: 200
    else
      render nothing: true, status: 422
    end
  end

  private

  def entries_params
    params.require(:entries).permit(:healthy_thing_id, :date, :value)
  end

end
