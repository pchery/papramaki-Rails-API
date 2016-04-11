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

require 'test_helper'

class BalanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
