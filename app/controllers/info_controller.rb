class InfoController < ApplicationController
  
  def index
  end

  def damon
    render :layout => 'popup'
  end

  def david
    render :layout => 'popup'
  end

  def carter
    render :layout => 'popup'
  end

  def greg
    render :layout => 'popup'
  end

  def signup
    render :layout => 'popup'
  end
  
  def signingup
    Notifier.deliver_notification(params[:email])
    render :text => 'Email has been sent'
  end
  
end