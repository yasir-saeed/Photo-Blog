class Image < ApplicationRecord
  belongs_to :author
  has_one_attached :photo
end
