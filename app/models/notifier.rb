class Notifier < ActionMailer::Base

  def notification(email)
    recipients THEBAND
    from       'admin@gostaberling.com'
    subject    "New subscriber notification! - #{Time.new.strftime('%m.%d.%y at %I:%M%p')}"
    body       :email => email
  end

end
