def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value), new_hash|
    value.each do |inner_key, name|
      name.each do |str|
      if new_hash[str] == nil
        new_hash[str] = {}
      end
      if new_hash[str][key] == nil
        new_hash[str][key] = []
      end
      new_hash[str][key] << inner_key.to_s
      end
    end
  end
end
