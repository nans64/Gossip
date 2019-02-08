class Gossip < ApplicationRecord
	belongs_to :user
	has_many :posts
	has_many :tags, through: :posts
	has_many :comments
	validates :title, length: {minimum: 3, maximum: 14}
	validates :content, presence: true	
	has_many :comments, inverse_of: :gossip
	accepts_nested_attributes_for :comments
	has_many :likes, dependent: :destroy
end
