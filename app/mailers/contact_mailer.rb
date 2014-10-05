class ContactMailer < ActionMailer::Base
  default from: "tienlex@gmail.com"

  def contact_email(contact)
    @contact = contact
    mail(to: 'tienlex@gmail.com', from: contact.email, subject: 'Saigon spaces: Take a tour')
  end
end
