class Comment < ActiveRecord::Base
	belongs_to :article
	validates :content, length: { maximum: 140 }, presence: true
end
