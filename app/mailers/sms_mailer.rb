class SmsMailer < ActionMailer::Base
  default from: "SriramK89@ipipi.com"
  def send_sms(sm)
    mail(:to => "91#{sm.number}@sms.ipipi.com", :subject => "", :body => "#{sm.message}")
  end
end
