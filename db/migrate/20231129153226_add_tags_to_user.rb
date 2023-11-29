class AddTagsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :tags, :string
  end
end
