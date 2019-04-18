class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications
  
  def self.first_five
    first 5 boats 
  end 
  
  def self.dinghy
    shorter than 20ft
  end 
  
  def self.ship
    20ft or longer
  end 
  
  def last_three_alphabetically
    last 3 boats in order 
  end
  
  def without_a_captain
    
  end
  
  def sailboats
    all boats that are sailboats
  end
  
  def with_three_classifications
    all boats with 3 classifications 
  end 
end
