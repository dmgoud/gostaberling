class Notifier < ActionMailer::Base

  def notify
    @email = params[:email]
    render_mail :notify
  end

end
