module ApplicationHelper

  def gallery_panel(path, desc)
    capture_haml do
      haml_tag :li do
        haml_tag :img, {:src => "/images/#{path}"}
        haml_tag :div, { :class => 'panel-overlay' } do
          haml_tag :h2, "&nbsp;".html_safe, {:class => 'title'}
          haml_tag :p, desc.html_safe, {:class => 'desc'}
        end
      end
    end
  end
end
