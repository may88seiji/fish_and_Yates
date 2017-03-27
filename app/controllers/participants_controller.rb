class ParticipantsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @participant = Participant.new
    @participant.event_id = @event.id
    #binding.pry
  end

  def create
    @participant = Participant.create(create_params)
    #binding.pry
    redirect_to :root and return
  end

  def destroy
    participant = Participant.find_by(user_id: current_user.id, event_id: params[:id])
    participant.destroy
    redirect_to :back
  end

  private
  def create_params
    params.require(:participant).permit(:event_id).merge(user_id: current_user.id)
  end
end
