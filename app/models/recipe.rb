class Recipe < ApplicationRecord
	
	belongs_to :user
	default_scope -> { order(created_at: :desc) }
	mount_uploader :picture, PictureUploader

	validates :user_id, presence: true
	validates :ingredients, presence: true

end
