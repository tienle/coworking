class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    flash[:notice] = 'Thanks for contacting us, we will reply to you as soon as possible :)'
    ContactMailer.contact_email(@contact).deliver
    redirect_to action: :new
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :phone_number, :messages)
  end
end
