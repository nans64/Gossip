class Like < ApplicationRecord
  has_many :likes, dependent: :destroy
end
