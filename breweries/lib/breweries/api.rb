class Breweries::API 
  
  def self.get_breweries
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries")
    breweries_obj = {
      name: @breweries_hash["name"], 
      city: @breweries_hash["city"] 
    }
     binding.pry
  end 
  
end 