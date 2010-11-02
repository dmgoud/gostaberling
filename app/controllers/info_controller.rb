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
    Notifier.notification(params[:email]).deliver
    head :ok
  end
  
end