class ContactFormController < ApplicationController
  # def create
  #   @name = params[:contact_form][:name]
  #   @last_name = params[:contact_form][:last_name]
  #   @phone_number = params[:contact_form][:phone_number]
  #   @email = params[:contact_form][:email]
  #   @message = params[:contact_form][:message]

  #   # Perform any necessary actions with the form data
  #   if @object.save
  #     flash[:notice] = "Objet créé avec succès."
  #     redirect_to @object
  #   else
  #     flash[:alert] = "Erreur lors de la création de l'objet."
  #     render :new
  #   end
  # end
  #
def new
  @contact = Contact.new
end

def create
  @contact = Contact.new(contact_params)
  if @contact.valid?
    ContactMailer.contact_email(@contact).deliver_now
    redirect_to new_contact_path, notice: 'Message envoyé avec succès.'
  else
    render :new
  end
end

private

def contact_params
  params.require(:contact).permit(:name, :email, :message)
end
end
