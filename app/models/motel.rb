class Motel < ApplicationRecord
 has_many :reviews, dependent: :destroy
end
