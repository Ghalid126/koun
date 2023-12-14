class ContactFormController < ApplicationController
  def new
    # This action will render your form
  end

  def create
    # Extract form data
    name = params[:contact_form][:name]
    email = params[:contact_form][:email]
    phone_number = params[:contact_form][:phone_number]
    message = params[:contact_form][:message]

    # Send email
    ContactMailer.contact_email(name, email, phone_number, message).deliver_now

    # Set a flash message and redirect
    flash[:success] = "Your message has been sent successfully."
    redirect_to new_contact_form_path
  end
end
