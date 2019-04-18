class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    joins(boats: :classifications).where(classifications: {name: "Catamaran"})
  end 
  
  def self.sailors
    #all captains w sailboats
  end
  
  def self.talented_seafarers
    #captains of motorboats and sailboats
  end 
  
  def self.non_sailors
    #people not captains of sailboats
  end
end
