class ApplyMailer < ActionMailer::Base
  default :from => "ViaDecaLLC@gmail.com"
  default :bcc => "ViaDecaLLC@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "Application Confirmation")
  end
end