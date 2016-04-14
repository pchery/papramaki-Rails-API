class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable

  has_many :budgets
  has_many :expenditures
  has_many :categories
  has_one :balance
  include DeviseTokenAuth::Concerns::User
end
