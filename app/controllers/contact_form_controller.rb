class ContactFormController < ApplicationController
  def create
    # Capture form data
    @contact_form = ContactForm.new(contact_form_params)

    if @contact_form.valid?
      # Send email with contact details
      ContactMailer.send_contact_info(@contact_form).deliver_now

      # Send confirmation email to the person who filled the form
      ContactMailer.confirmation_email(@contact_form.email).deliver_now

      # Set flash message
      flash[:notice] = "Your message has been sent! We'll be in touch soon."

      # Render the same page or redirect to the contact form page
      render 'new'  # Assuming 'new' is your form view
    else
      # Handle invalid form submission
      render 'new'
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :last_name, :email, :phone_number, :message)
  end
end






# class ContactFormController < ApplicationController
#   def create
#     @contact = Contact.new(contact_params)

#     # Perform any necessary actions with the form data
#     if @contact.save
#       # Ici, vous devez ajouter la logique pour envoyer l'email
#       ContactMailer.contact_email(@contact).deliver_now

#       flash[:notice] = "Message envoyé avec succès."
#       redirect_to root_path # ou vers une autre page appropriée
#     else
#       flash.now[:alert] = "Erreur lors de l'envoi du message."
#       render :new
#     end
#   end

#   private

#   def contact_params
#     params.require(:contact_form).permit(:name, :last_name, :phone_number, :email, :message)
#   end

# end

  #
# def new
#   @contact = Contact.new
# end

# def create
#   @contact = Contact.new(contact_params)
#   if @contact.valid?
#     ContactMailer.contact_email(@contact).deliver_now
#     redirect_to new_contact_path, notice: 'Message envoyé avec succès.'
#   else
#     render :new
#   end
# end

# private

# def contact_params
#   params.require(:contact).permit(:name, :email, :message)
# end
# end
