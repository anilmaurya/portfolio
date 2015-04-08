class Mailer < ActionMailer::Base
  default from: "anilmaurya8dec@gmail.com"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_notification(client)
    @client = client
    mail( :to => 'anilmaurya8dec@gmail.com',
         :subject => 'Message from portfolio' )
  end
end
