class Captain < ActiveRecord::Base
  has_many :boats
  
  def self.catamaran_operators
    all captains of catamarans
  end 
  
  def self.sailors
    all captains w sailboats
  end
  
  def talented_seafarers
    captains of motorboats and sailboats
  end 
  
  def non_sailors
    people not captains of sailboats
  end
end
