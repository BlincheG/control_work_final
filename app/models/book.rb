class Book < ApplicationRecord
	has_and_belongs_to_many :authors
	has_and_belongs_to_many :categories
	belongs_to :user
	has_many :comments

	def score_medium
		comments.score + comments.count
	end
end
