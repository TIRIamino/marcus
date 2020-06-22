class Review < ApplicationRecord
  belongs_to :motel
  validates :content, length: { minimum: 20 }

end
