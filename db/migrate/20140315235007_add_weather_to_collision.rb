class AddWeatherToCollision < ActiveRecord::Migration
  def change
    add_column :collisions, :weather_condition, :string
  end
end
