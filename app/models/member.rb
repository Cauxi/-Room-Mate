class Member < ApplicationRecord
  belongs_to :user      
  belongs_to :group

  validates :status, inclusion: { in: %w(accepted pending rejected) }
end
