class ContactFormController < ApplicationController
  def new
    # This action will render your form
      set_meta_tags title: I18n.t('meta.contact.title'),
                description: I18n.t('meta.contact.description'),
                keywords: I18n.t('meta.contact.keywords'),
                og: {
                  title: I18n.t('meta.contact.og.title'),
                  description: I18n.t('meta.contact.og.description'),
                  url: I18n.t('meta.contact.og.url'),
                  type: I18n.t('meta.contact.og.type')
                },
                twitter: {
                  card: I18n.t('meta.contact.twitter.card'),
                  title: I18n.t('meta.contact.twitter.title'),
                  description: I18n.t('meta.contact.twitter.description')
                }
  end



  def create
    # Extract form data
    name = params[:contacts][:name]
    email = params[:contacts][:email]
    phone_number = params[:contacts][:phone_number]
    message = params[:contacts][:message]

    # Send email
    ContactMailer.contact_email(name, email, message, phone_number).deliver_now

    # Set a flash message and redirect
    flash[:success] = "Your message has been sent successfully."
    redirect_to contact_path
  end
end
