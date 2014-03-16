class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :weather_date
      t.string :condition

      t.timestamps
    end
  end
end
