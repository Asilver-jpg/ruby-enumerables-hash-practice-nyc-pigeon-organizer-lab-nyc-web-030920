require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list= {}
 data.each do |qualifier, val|
  val.each do |quality, value|
    value.each do |name|
       
      if !(pigeon_list.has_key?(name))
          pigeon_list[name] = {}
        end
      if !(pigeon_list[name].has_key?(qualifier))
        pigeon_list[name][qualifier] = []
      end
     pigeon_list[name][qualifier].push(quality.to_s)
  end
 end

end

 pigeon_list
end
