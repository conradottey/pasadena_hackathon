class ClaimImporter 
  def self.import_claim

		file = "db/claim_export.csv"
    #  title = entry.title.gsub(/^#\d+\s/, '')

    # Find or create the screencast data into our database

  	CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
      Claim.create(
				# Claim ID	Video ID	Uploader	Video Title	Claim Type	Claim Status
        claim_id:     row[0],
        video_id:     row[1],
        uploader:     row[2],
        title:        row[3]
      )
    end

    # Return the number of total screencasts for the source
    # Screencast.where(source: 'railscasts').count
  end
end

#     Team.create {
#       :name => row[1],
#       :league => row[2],
#       :some_other_data => row[4]
#     }
#   end

# end
