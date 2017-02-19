class Article < ApplicationRecord
	validates :title, :description, :presence => true
  


  searchable do
  	text :title, boost: 2
  	text :description
  	time :created_at
  	string :published_month
  end

  def published_month
  	created_at.strftime("%B %Y")
  end
end
