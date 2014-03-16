
class CollisionImporter 
  def self.import_collision

		file = "db/weather.csv"


    # PST,Max TemperatureF,Mean TemperatureF,Min TemperatureF,Max Dew PointF,MeanDew PointF,Min DewpointF,Max Humidity, Mean Humidity, Min Humidity, Max Sea Level PressureIn, Mean Sea Level PressureIn, Min Sea Level PressureIn, Max VisibilityMiles, Mean VisibilityMiles, Min VisibilityMiles, Max Wind SpeedMPH, Mean Wind SpeedMPH, Max Gust SpeedMPH,PrecipitationIn, CloudCover, Events, WindDirDegrees

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Collision.create(

        

      )
    end
  end
end

#     Team.create {
#       :name => row[1],
#       :league => row[2],
#       :some_other_data => row[4]
#     }

