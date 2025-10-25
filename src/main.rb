require_relative 'road_bike'
require_relative 'mountain_bike'
require_relative 'recumbent_bike'

def main
  road_bike = RoadBike.new(tape_color: 'green')
  print_variables(road_bike)

  bent = RecumbentBike.new(flag: 'tall and orange')
  puts bent.spears
end

def print_variables(object)
  object.instance_variables.each do |var|
    puts "#{var}: #{object.instance_variable_get(var)}"
  end
end

main
