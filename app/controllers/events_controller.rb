class EventsController < ApplicationController
  def create
    event = Event.create(create_params)
#    binding.pry
    redirect_to :root and return
    
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants
    @participant = Participant.new
  end


    
  private
  def create_params
    params.require(:event).permit(:text).merge(user_id: current_user.id, group_id: current_user.group_id)
  end
end
