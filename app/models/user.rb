class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :location, presence: true
  validates :description, presence: true, length: { maximum: 150 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
