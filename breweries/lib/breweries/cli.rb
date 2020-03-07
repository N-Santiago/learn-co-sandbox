class Breweries::CLI
  
  def start 
    puts "Hello there!"
    @data = Breweries::API.get_breweries 
  end 
  
  def display_info 
    puts "Please enter location:"
    input = gets.strip.downcase
    
    if input == "city"
      puts "************You'll love the following spots!************"
      puts "List of Breweries"
      display_info
    else 
      quit 
    end 
  end  
  
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end 
  
end
