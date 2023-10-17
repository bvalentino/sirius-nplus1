class AddPostsCountToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :posts_count, :integer, default: 0, null: false
  end
end
