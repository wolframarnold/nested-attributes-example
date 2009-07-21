class Ship < ActiveRecord::Base

  belongs_to :pirate

  validates_presence_of :name, :pirate

end
