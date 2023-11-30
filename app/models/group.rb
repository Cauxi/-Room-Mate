class Group < ApplicationRecord
  belongs_to :user
  has_many :members
  validates :name, presence: true
  has_one :chatroom, dependent: :destroy
end
