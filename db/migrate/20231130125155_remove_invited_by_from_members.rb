class RemoveInvitedByFromMembers < ActiveRecord::Migration[7.1]
  def change
    remove_column :members, :invited_by, :string
  end
end
