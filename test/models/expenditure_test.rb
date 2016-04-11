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

require 'test_helper'

class ExpenditureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
