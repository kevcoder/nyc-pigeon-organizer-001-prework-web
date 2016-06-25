
def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, value|
    value.each do |value_name, pigeon_name_array|
      pigeon_name_array.each do |name|
        if !pigeon_list.key?(name)
          pigeon_list[name]={}
          pigeon_list[name][:color]=[]
          pigeon_list[name][:gender]=[]
          pigeon_list[name][:lives]=[]
        end
        if attribute == :color
          pigeon_list[name][:color] << value_name.to_s
        elsif attribute == :gender
          pigeon_list[name][:gender] << value_name.to_s
        else
          pigeon_list[name][:lives] << value_name
        end
      end
    end
  end
  pigeon_list
end
