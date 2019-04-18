class MessageMailer < ApplicationMailer

  default from: 'snake198383@gmail.com'
  def welcome_email
    @message = params[:message]
    mail(to: 'snake198383@gmail.com', subject: 'Dostałeś wiadomość')
  end

end