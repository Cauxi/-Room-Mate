class AddCheckToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :check, :string, default: "no"
  end
end
