class CollisionImporter 
  def self.import_collision

		file = "db/traffic.csv"
    #  title = entry.title.gsub(/^#\d+\s/, '')

    # Find or create the screencast data into our database

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Collision.create(
        date_of_collision:     row[0],
        time_of_collision:     row[1],
        location:              row[2],
        distance:              row[3],
        collision_type:        row[5],
        involved_with:         row[6],
        vehicle_one_direction: row[7],
        vechicle_one_motion:   row[8],
        vehicle_two_direction: row[9],
        vehicle_two_motion:    row[10],
        primary_cause:         row[11],
        injuries:              row[12],
        fatalities:            row[13]
      )
    end
  end
end

#     Team.create {
#       :name => row[1],
#       :league => row[2],
#       :some_other_data => row[4]
#     }

