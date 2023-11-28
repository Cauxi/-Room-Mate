class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true, uniqueness: true
  # validates_format_of :email, :with[/\A\w+@\w+\.\w{2,3}\z/], message: "must be a valid email address"
  validates :password, presence: true, length: { minimum: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  # validates_format_of :nickname, :with[/\A\w{4,16}\z/], message: "cannot contain spaces or special characters"
  validates :age, presence: true, numericality: { only_integer: true }
  validates :location, presence: true
  validates :gender, presence: true, inclusion: { in: %w(Male Female) }
  validates :description, presence: true, length: { minimum: 10 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, dependent: :destroy
  has_many :members, dependent: :destroy
end
