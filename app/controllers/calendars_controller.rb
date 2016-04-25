class CalendarsController < ApplicationController
  def show
    gon.events = Event.all
    # gon.events = events.to_s
  end
end
