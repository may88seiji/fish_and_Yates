class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :participants


  #validation
  validates_presence_of :user_id, :text, :group_id

  def user_participant(user_id)
      Participant.find_by(user_id: user_id, event_id: id)
  end
end
