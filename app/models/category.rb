class Category < ActiveRecord::Base
	belongs_to :expenditure
	belongs_to :user
end
