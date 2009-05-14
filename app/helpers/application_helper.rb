# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def currently_selected(selected)
    selected == @controller.controller_name
  end

end
