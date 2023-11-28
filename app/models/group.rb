class Group < ApplicationRecord
  belongs_to :user
  has_many :members

  validates :name, presence: true
end
