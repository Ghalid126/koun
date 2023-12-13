class ApplicationMailer < ActionMailer::Base
  def send_contact_info(contact_form)
    @contact_form = contact_form
    mail(to: 'contact@koun.online', subject: 'New Contact Form Submission')
  end

  def confirmation_email(user_email)
    mail(to: user_email, subject: 'Thank you for your submission!')
  end
end
