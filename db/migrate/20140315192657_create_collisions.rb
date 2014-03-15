class CreateCollisions < ActiveRecord::Migration
  def change
    create_table :collisions do |t|
      t.string :date_of_collision
      t.string :time_of_collision
      t.text :location
      t.string :collision_type
      t.string :involved_with
      t.string :vehicle_one_direction
      t.string :vechicle_one_motion
      t.string :vehicle_two_direction
      t.string :vehicle_two_motion
      t.string :primary_cause
      t.integer :injuries
      t.integer :fatalities

      t.timestamps
    end
  end
end
