class Expenditure < ActiveRecord::Base
	belongs_to :user
	belongs_to :budget
	belongs_to :category

end
