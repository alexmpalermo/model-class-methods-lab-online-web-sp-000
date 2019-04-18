class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications
  
  def self.my_all
    all classifications
  end
  
  def longest
    classifications for longest boat 
  end
end
