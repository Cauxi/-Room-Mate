class AddInvitedToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :invited, :integer
  end
end
