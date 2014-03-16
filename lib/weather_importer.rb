require 'time'

class WeatherImporter 
  def self.import_weather

    file = "db/weather.csv"
    #  title = entry.title.gsub(/^#\d+\s/, '')
    # 2012-1-1
    # 11/7/12
    
    CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
        time = Time.parse(row[0]).strftime("%m/%d/%y")

      Weather.create(
        weather_date: time,
        condition:    row[21]    
      )
    end
  end
end