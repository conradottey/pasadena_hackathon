require 'time'

class WeatherImporter 
  def self.import_weather

    file = "db/weather.csv"

    CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
        time = Time.parse(row[0]).strftime("%m/%d/%y")

      Weather.create(
        weather_date: time,
        condition:    row[21]    
      )
    end
  end
end


# Collision.connection.select_all("SELECT * FROM collisions c LEFT OUTER JOIN weathers w ON w.weather_date = c.date_of_collision WHERE c.date_of_collision = '04/12/01'")