require 'rails_helper'

RSpec.describe Article do
	describe "Title content" do
		let(:article) {
			Article.create!(title: "Hello Rails", body: "Nice to meet you")
		}
		it "should be a valid article" do
			expect article.valid? eq true
		end
		# it "absolutely prevents invalid article title" do
		# 	expect {
		# 		article.update_attributes!(title: "")
		# 		}.to raise_error(ActiveRecord::RecordInvalid,
		# 			/title is too short (minimum is 2 characters)/i)
		# 	end
	end
end