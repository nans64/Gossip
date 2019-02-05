class Gossip < ApplicationRecord
	belongs_to :user
	has_many :posts
	has_many :tags, through: :posts

	validates :title, length: {minimum: 3, maximum: 14}
	validates :content, presence: true
end
