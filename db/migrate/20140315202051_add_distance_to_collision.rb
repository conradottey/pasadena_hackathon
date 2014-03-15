class AddDistanceToCollision < ActiveRecord::Migration
  def change
    add_column :collisions, :distance, :integer
  end
end
