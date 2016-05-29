class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      has_many :comments

      t.timestamps null: false
    end
  end
end
