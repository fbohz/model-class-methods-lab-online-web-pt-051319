class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all #implicit self
  end

  def self.longest
    Boat.longest.classifications
  end

end
