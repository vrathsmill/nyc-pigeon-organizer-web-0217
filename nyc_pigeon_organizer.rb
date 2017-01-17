def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |info, info_hash|
    info_hash.each do |description, names_array|
      names_array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

      if !pigeon_list[name].has_key?(info)
        pigeon_list[name][info] = []
      end

      if !pigeon_list[name][info].include?(description)
        pigeon_list[name][info] << description.to_s
      end
    end
  end
end
  pigeon_list
end
