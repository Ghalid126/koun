class ContactMailer < ApplicationMailer
  default from: 'contact@koun.online'

  def contact_email(name, email, message, phone_number)
    @name = name
    @message = message
    @phone_number = phone_number
    mail(to: 'contact@koun.online', subject: 'New Contact Message')
  end
end
