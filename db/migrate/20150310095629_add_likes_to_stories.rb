class AddLikesToStories < ActiveRecord::Migration
  def change
    add_column :stories, :likes, :integer
  end
end
