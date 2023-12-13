class ContactFormController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @phone_number = params[:contact_form][:phone_number]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    # Perform any necessary actions with the form data
    if @object.save
      flash[:notice] = "Objet créé avec succès."
      redirect_to @object
    else
      flash[:alert] = "Erreur lors de la création de l'objet."
      render :new
    end
  end
end
