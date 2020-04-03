class ChangeDatatypeNameOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :name, :text
  end
end
