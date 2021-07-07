require 'pry'

def nyc_pigeon_organizer(data)
  
  new_hash = {}
  
  data.each do |key, value|
     
    value.each do |key2, value2|
   
      value2.each do |element|
     
      if new_hash[element] == nil 
        new_hash[element] = {}
      end
      
      if new_hash[element][key] == nil
        new_hash[element][key] = []
      end
    
       new_hash[element][key].push(key2.to_s)
       
      end
      
    end
    
  end
  
new_hash

end

