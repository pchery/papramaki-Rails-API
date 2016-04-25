module CategoriesHelper
  def set_color
    color_list = ['white', 'blue', 'yellow']
    number_of_categories = Category.where(user_id: current_user.id).count
    return color_list[number_of_categories]
  end
end
