class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications
  
  def my_all
    all classifications
  end
  
  def self.longest
    classifications for longest boat 
  end
end
