class User < ActiveRecord::Base
  # Include default devise modules.
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable,
          :omniauthable

  has_many :budgets, dependent: :destroy
  has_many :expenditures, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_one :balance, dependent: :destroy
  include DeviseTokenAuth::Concerns::User

  after_create :create_balance

  private

  def create_balance
    Balance.create(id: self.id, user_id: self.id)
  end
end
