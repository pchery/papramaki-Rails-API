# == Schema Information
#
# Table name: balances
#
#  id         :integer          not null, primary key
#  amount     :float
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Balance < ActiveRecord::Base
	belongs_to :user
end
