class TopController < ApplicationController
  def index
    @event = Event.new

    @events = current_user.group.events

    @participant = Participant.new
#      binding.pry
  end
end
