module BudgetsHelper
  def udpate_budget_expiration
    budgets = Budget.where(user_id: current_user.id)
    budgets.each do |budget|
      if Date.today > budget.expiration_date
        budget.expired = true
        budget.save
      end
    end
  end

  def update_exp_sum
    budgets = Budget.where(user_id: current_user.id)
    budgets.each do |budget|
      exp_sum = 0.0
      budget.expenditures.each do |exp|
        exp_sum += exp.amount
      end
      budget.update(expenditure_sum_amount: exp_sum)
    end
  end
end
