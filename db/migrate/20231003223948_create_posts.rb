class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.belongs_to :author, null: false, foreign_key: true
      t.text :message, null: false
      t.datetime :published_at, null: false

      t.timestamps
    end
  end
end
