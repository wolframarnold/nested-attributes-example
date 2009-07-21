class Pirate < ActiveRecord::Base

  has_one :ship, :dependent => :destroy

  validates_presence_of :catchphrase

  accepts_nested_attributes_for :ship 
end
