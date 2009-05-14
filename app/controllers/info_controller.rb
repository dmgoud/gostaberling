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
    send_mail(SignupMailer, :notify, {
      :from => "admin@gostaberling.com",
      :to => THEBAND,
      :subject => "New subscriber notification!"
    }, { :email => params[:email] })
    render
  end
  
end