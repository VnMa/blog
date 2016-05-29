class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :article_id
      t.text :content

      t.timestamps null: false
    end
    add_index :comments, article_id
  end

  def self.down
  	drop_tabe comments
  end
end
