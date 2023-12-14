class ContactFormController < ApplicationController
  def new
    # This action will render your form
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
    redirect_to new_contact_form_path
  end
end
