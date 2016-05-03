module CategoriesHelper
  def set_color
    # color_list = [
    #   'red', 'blue', 'green', 'black', 'white', 'gray', 'cyan', 'magenta',
    #   'yellow', 'lightgray', 'darkgray', 'grey', 'lightgrey', 'darkgrey',
    #   'aqua', 'fuchsia', 'lime', 'maroon', 'navy', 'olive', 'purple', 'silver',
    #   'teal', 'red', 'blue', 'green', 'black', 'white', 'gray', 'cyan',
    #   'magenta', 'yellow', 'lightgray', 'darkgray', 'grey', 'lightgrey',
    #   'darkgrey', 'aqua', 'fuchsia', 'lime', 'maroon', 'navy', 'olive',
    #   'purple', 'silver', 'teal', 'red', 'blue', 'green', 'black', 'white',
    #   'gray', 'cyan', 'magenta', 'yellow', 'lightgray', 'darkgray', 'grey',
    #   'lightgrey', 'darkgrey', 'aqua', 'fuchsia', 'lime', 'maroon', 'navy',
    #   'olive', 'purple', 'silver', 'teal'
    # ]
    color_list = [
      '#FF0000', '#80FF00', '#00FFFF', '#8000FF',
      '#FF8000', '#00FF00', '#0080FF', '#FF00FF',
      '#FFFF00', '#00FF80', '#0000FF', '#FF0080'
    ]
    number_of_categories = Category.where(user_id: current_user.id).count
    color_list[number_of_categories]
  end
end
