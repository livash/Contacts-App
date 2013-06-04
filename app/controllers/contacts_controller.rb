class ContactsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    @contacts = user.contacts #Contact.find_by_user_id(params[:id])
    render :index
  end

  def show
    contact = Contact.find(params[:id])
    render :json => contact
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save
      render :json => contact
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end

  def update

  end

end
