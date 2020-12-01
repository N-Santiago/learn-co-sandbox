class Breweries::HoppyCode
  
  attr_accessor :name, :street, :city, :phone, :website_url 
  
  @@all = []
 
  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
  end 
  
  def self.all
    @@all
  end

  def save
    @@all << self 
  end   

  end  

