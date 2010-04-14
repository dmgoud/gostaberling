class InfoController < ApplicationController
  
  def index
  end

  def damon
    render :layout => 'popup'
  end

  def david
    render :layout => 'popup'
  end

  def andre
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
    head :ok
  end
  
end