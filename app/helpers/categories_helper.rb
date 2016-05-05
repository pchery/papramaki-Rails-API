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
    # color_list = [
    #  '#FF0000', '#80FF00', '#00FFFF', '#8000FF',
    #  '#FF8000', '#00FF00', '#0080FF', '#FF00FF',
    #  '#FFFF00', '#00FF80', '#0000FF', '#FF0080'
    # ]
    color_list = ['#16a085', '#8e44ad', '#2980b9', '#f39c12', '#d35400', '#c0392b', '#1abc9c', '#9b59b6', '#3498db', '#f1c40f', '#e67e22', '#e74c3c']
    # colors in color_list = [turquoise, purple, blue, yellow, orange, red, 
	# 	light turquoise, light purple, light blue, light yellow, light orange, light red]

    number_of_categories = Category.where(user_id: current_user.id).count
    color_list[number_of_categories % color_list.count]
  end
end 