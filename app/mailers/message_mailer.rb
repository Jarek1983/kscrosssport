class MessageMailer < ApplicationMailer

  default from: 'snake198383@gmail.com'
  def welcome_email(user, message)
    @user = user
    @message = message
    mail(to: 'snake198383@gmail.com', subject: 'Welcome to My Awesome Site')
  end

end