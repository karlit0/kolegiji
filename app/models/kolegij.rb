class Kolegij < ActiveRecord::Base
  attr_accessible :ime, :ocjena
  validates :ocjena, :inclusion => { :in => 1..5 }
end
