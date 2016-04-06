class Expenditure < ActiveRecord::Base
	belongs_to :user
	belongs_to :budget
	has_one :category

end
