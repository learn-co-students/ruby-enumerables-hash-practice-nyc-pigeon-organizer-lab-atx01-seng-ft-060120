

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(color_gender_lives, inner_keys), final_array|
    inner_keys.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
      if !final_array[name][color_gender_lives]
        final_array[name][color_gender_lives] = []
      end
      final_array[name][color_gender_lives].push(inner_key.to_s)
    end
  end
end
end






#get to the names
#make each name keys of the final hash
  #make sure no doubles
    #turn them into strings, not symbols

#Make the final hash include a hash that has the keys:
#  color
#  gender
  #lives
#  those are all symbols

#  and each of those has arrays as their value. which are arrays of strings.
#    The stings in the arrays have the corresponding values  to the key titles
# remember to convert the final thing to a hash
