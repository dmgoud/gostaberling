class Notifier < ActionMailer::Base
  default :from => "admin@gostaberling.com"

  def notification(email)
    @email = email
    mail(:to      => ::THEBAND,
         :subject => "New subscriber notification! - #{Time.new.strftime('%m.%d.%y at %I:%M%p')}")
  end

end
