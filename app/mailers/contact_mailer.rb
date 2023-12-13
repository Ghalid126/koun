class ContactMailer < ApplicationMailer

    default to: 'votre@email.com' # Adresse email où les messages seront envoyés

    def contact_email(contact)
      @contact = contact
      mail(from: @contact.email, subject: 'Nouveau Message du Formulaire de Contact')
    end

end
