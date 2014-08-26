class WelcomeController < ApplicationController

  def client
    Client.create!(name: params[:name], email: params[:email], phone: params[:phone], message: params[:message])
    render nothing: true
  end
end
