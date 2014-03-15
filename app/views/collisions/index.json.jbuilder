json.array!(@collisions) do |collision|
  json.extract! collision, :date_of_collision, :time_of_collision, :location, :collision_type, :involved_with, :vehicle_one_direction, :vechicle_one_motion, :vehicle_two_direction, :vehicle_two_motion, :primary_cause, :injuries, :fatalities
  json.url collision_url(collision, format: :json)
end