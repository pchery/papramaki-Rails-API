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

require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
