class Images < ApplicationRecord
  belongs_to :author
  has_one_attached :photo


validates :photo,
		  :presence => true

validates :title,
		  :presence => true


scope :published, -> do
	where(published: true)


	
end 		  

end
