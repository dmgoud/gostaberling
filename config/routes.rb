ActionController::Routing::Routes.draw do |map|

  map.home '', :controller => 'home', :action => 'index'

  map.resources :pics, :only => [:index], :collection => {:gallery => :get}

  map.signingup 'signingup', :controller => :info, :action => 'signingup'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
