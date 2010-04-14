ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'home', :action => 'index'
  map.connect 'music', :controller => :music, :action => 'index'
  map.connect 'info', :controller => :info, :action => 'index'
  map.connect 'pics', :controller => :pics, :action => 'index'
  map.connect 'shop', :controller => :shop, :action => 'index'

  map.connect 'damon', :controller => :info, :action => 'damon'
  map.connect 'david', :controller => :info, :action => 'david'
  map.connect 'andre', :controller => :info, :action => 'andre'
  map.connect 'greg', :controller => :info, :action => 'greg'
  map.connect 'signup', :controller => :info, :action => 'signup'

  map.connect 'ziegfeld', :controller => :music, :action => 'ziegfeld'
  map.connect 'garden', :controller => :music, :action => 'garden'
  map.connect 'rebecca', :controller => :music, :action => 'rebecca'
  map.connect 'these_days', :controller => :music, :action => 'these_days'
  map.connect 'berlin', :controller => :music, :action => 'berlin'

  map.connect 'signingup', :controller => :info, :action => 'signingup'
end
