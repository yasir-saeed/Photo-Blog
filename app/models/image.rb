class Image < ApplicationRecord
  belongs_to :author
  has_one_attached :photo



validates :photo,
		  :presence => true

validates :title,
		  :presence => true

end
