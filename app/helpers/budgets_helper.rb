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
end
