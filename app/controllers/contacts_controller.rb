class ContactsController < ApplicationController
  def index
    # render text: "I'm in the index action!"
    render json: Contact.all
  end
  
  def create
    contact = Contact.new(contact_params)
    if contact.save
      render json: contact
    else
      render(
        json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end
  
  def show
    @contact = Contact.find(params[:id])
    render json: @contact
  end
  
  def update
    @contact = Contact.find(params[:id])
    if @contact.update!(contact_params)
      render json: @contact
    else
      render(
        json: contact.errors.full_messages, status: :unprocessable_entity
      )
    end
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    
    render json: { message: 'Destroyed!' } 
  end
  
  private
  
  def contact_params
    params.require(:Contact).permit(:name, :email, :user_id)
  end
  
end
