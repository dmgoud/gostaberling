# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def currently_selected(selected)
    selected == @controller.controller_name
  end

  def gallery_panel(path, title, desc)
    capture_haml do
      haml_tag :div, {:class => 'panel'} do
        haml_tag :img, {:src => "/images/#{path}"}
        haml_tag :div, { :class => 'panel-overlay' } do
          haml_tag :h2, title, {:class => 'title'}
          haml_tag :p, desc, {:class => 'desc'}
        end
      end
    end
  end

  def gallery_filmstrip(path, alt, title)
    capture_haml do
      haml_tag :li do
        haml_tag :img, {:src => "/images/#{path}", :alt => alt, :title => title}
      end
    end

  end

end
