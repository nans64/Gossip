class Gossip < ApplicationRecord
	belongs_to :user
	has_many :posts
	has_many :tags, through: :posts
end
