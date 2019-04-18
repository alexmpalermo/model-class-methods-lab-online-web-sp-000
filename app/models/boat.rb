class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications
  
  def self.first_five
    limit(5) 
  end 
  
  def self.dinghy
    where(length < 20)
  end 
  
  def self.ship
    20ft or longer
  end 
  
  def self.last_three_alphabetically
    last 3 boats in order 
  end
  
  def self.without_a_captain
    
  end
  
  def self.sailboats
    all boats that are sailboats
  end
  
  def self.with_three_classifications
    all boats with 3 classifications 
  end 
end
