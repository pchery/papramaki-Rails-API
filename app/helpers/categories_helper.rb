module CategoriesHelper
  def set_color
    color_list = [
      '#FF0000', '#80FF00', '#00FFFF', '#8000FF',
      '#FF8000', '#00FF00', '#0080FF', '#FF00FF',
      '#FFFF00', '#00FF80', '#0000FF', '#FF0080'
    ]
    number_of_categories = Category.where(user_id: current_user.id).count
    color_list[number_of_categories % color_list.count]
  end
end
