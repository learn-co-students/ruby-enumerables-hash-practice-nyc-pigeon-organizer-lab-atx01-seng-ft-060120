def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end 
        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end 
        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end 
    end 
  end 
new_hash
end
puts nyc_pigeon_organizer( {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
})