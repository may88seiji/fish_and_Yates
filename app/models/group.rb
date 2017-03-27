class Group < ActiveRecord::Base
  #association
  has_many :users
  has_many :events, ->{ order("created_at DESC") }
end
