class AddInvitedByToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :invited_by, :string
  end
end
