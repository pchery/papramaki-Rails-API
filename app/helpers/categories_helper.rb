module CategoriesHelper
  def set_color
    color_list = [
      'red', 'blue', 'green', 'black', 'white', 'gray', 'cyan', 'magenta',
      'yellow', 'lightgray', 'darkgray', 'grey', 'lightgrey', 'darkgrey',
      'aqua', 'fuchsia', 'lime', 'maroon', 'navy', 'olive', 'purple', 'silver', 'teal'
    ]
    number_of_categories = Category.where(user_id: current_user.id).count
    return color_list[number_of_categories]
  end
end
