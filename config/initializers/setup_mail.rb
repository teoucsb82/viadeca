ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "viadeca.com",
  :user_name            => "viadecallc",
  :password             => "rubyonrails",
  :authentication       => "plain",
  :enable_starttls_auto => true
}