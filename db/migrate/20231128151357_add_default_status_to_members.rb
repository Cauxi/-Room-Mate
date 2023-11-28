class AddDefaultStatusToMembers < ActiveRecord::Migration[7.1]
  def change
    change_column :members, :status, :string, default: "pending"
  end
end
