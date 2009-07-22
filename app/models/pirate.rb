class Pirate < ActiveRecord::Base
  has_one :ship, :dependent => :destroy
  has_many :parrots
  
  validates_presence_of :catchphrase

  accepts_nested_attributes_for :ship
  accepts_nested_attributes_for :parrots
end
