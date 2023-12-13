class ContactFormController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    # Perform any necessary actions with the form data
    if @contact.save
      # Ici, vous devez ajouter la logique pour envoyer l'email
      ContactMailer.contact_email(@contact).deliver_now

      flash[:notice] = "Message envoyé avec succès."
      redirect_to root_path # ou vers une autre page appropriée
    else
      flash.now[:alert] = "Erreur lors de l'envoi du message."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact_form).permit(:name, :last_name, :phone_number, :email, :message)
  end
end

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
