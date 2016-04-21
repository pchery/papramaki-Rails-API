# == Schema Information
#
# Table name: budgets
#
#  id         :integer          not null, primary key
#  amount     :float
#  duration   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :expenditures
end
