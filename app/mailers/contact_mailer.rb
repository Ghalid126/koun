class ContactMailer < ApplicationMailer

    default to: 'contact@koun.online', from: 'contact@koun.online'

    def contact_email(contact)
      @contact = contact
      mail(subject: "Message de #{contact.name}")
    end
end
