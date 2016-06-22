class Article < ActiveRecord::Base
	acts_as_taggable
	view = 0
	has_many :comments, dependent: :destroy
	validates_associated :comments
	validates :title, length: { minimum: 2}
	validates :body, length: {
		minimum: 2,
		maximum: 1000,
		tokenizer: lambda { |str| str.split(/\s+/) },
		too_short: "must have at least %{count} words",
		too_long: "must have at most %{count} words"
	}

	validate do |a|
		a.comments.each do |cmt|
			next if cmt.valid?
			cmt.errors.full_messages.each do |msg|
		        # you can customize the error message here:
		        errors[:base] << "Comments Error: #{msg}"
		    end
		end
	end

	def self.search(search)
		if search
			where(['title ILIKE ?', "%#{search}%"])
		else
			where('1=1')
		end
	end		
end
