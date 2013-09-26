class RepairsMailer < ActionMailer::Base
  default :from => "ViaDecaLLC@gmail.com"
  default :bcc => "ViaDecaLLC@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => user.phn, :subject => "Via Deca LLC - Repair Request Submitted!")
  end
end

#user.email