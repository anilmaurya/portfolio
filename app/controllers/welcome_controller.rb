class WelcomeController < ApplicationController

  def client
    client = Client.create!(name: params[:name], email: params[:email], phone: params[:phone], message: params[:message])
    Mailer.send_notification(client).deliver
    render nothing: true
  end
end
