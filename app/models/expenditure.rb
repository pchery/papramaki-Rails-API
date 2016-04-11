# == Schema Information
#
# Table name: expenditures
#
#  id          :integer          not null, primary key
#  amount      :float
#  user_id     :integer
#  budget_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expenditure < ActiveRecord::Base
	belongs_to :user
	belongs_to :budget
	belongs_to :category

end
