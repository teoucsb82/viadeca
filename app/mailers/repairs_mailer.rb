class RepairsMailer < ActionMailer::Base
  default :from => "ViaDecaLLC@gmail.com"
  default :bcc => "ViaDecaLLC@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    mail(:to => "teo.dellamico@gmail.com", :subject => "Repair request submitted!")
  end
end

#user.email