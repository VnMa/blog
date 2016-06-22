class Comment < ActiveRecord::Base
	belongs_to :article
	validates :commenter, presence: true
	validates :content, length: {
		minimum: 5,
		maximum: 100,
		too_short: "must have at least %{count} words",
		too_long: "must have at most %{count} words"
	}
end
