module CategoriesHelper
  def set_color
    color_list = ['#16a085', '#2980b9', '#8e44ad', '#f39c12', '#d35400', '#c0392b']
    # colors in color_list = [turquoise, blue, purple, yellow, orange, red]

    number_of_categories = Category.where(user_id: current_user.id).count
    color_list[number_of_categories % color_list.count]
  end
end
