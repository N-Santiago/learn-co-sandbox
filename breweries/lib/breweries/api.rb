class Breweries::API
  
  def self.get_breweries(input)
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries?by_city=#{input}")
    return if @breweries_hash.empty? #empty array handle 
    @breweries_hash.each do |brewery|
    breweries_obj = {
      name: brewery["name"],
      street: brewery["street"],
      city: brewery["city"],
      phone: brewery["phone"],
      website_url: brewery["website_url"] 
    }
    Breweries::HoppyCode.new(breweries_obj)
  end
end 
 
   
end  