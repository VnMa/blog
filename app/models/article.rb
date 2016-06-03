class Article < ActiveRecord::Base
	acts_as_taggable
	view = 0
	has_many :comments, dependent: :destroy

	
	def self.search(search)
		if search
			where(['title ILIKE ?', "%#{search}%"])
		else
			where('1=1')
		end
	end		
end
