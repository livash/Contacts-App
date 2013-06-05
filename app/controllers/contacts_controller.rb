class ContactsController < ApplicationController

  def index
    all_user_ids = User.all.map(&:id)
    # render :json => all_user_ids.include?(params[:user_id].to_i)
    if all_user_ids.include?(params[:user_id].to_i)
      user = User.find(params[:user_id])
      @contacts = user.contacts #Contact.find_by_user_id(params[:id])
      render :index
    else
      render :json => {:text => "User with sich id does not exist"}
    end
  end

  def show
    #check that is not nill based on :id
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
    all_contact_ids = Contact.all.map(&:id)
    if all_contact_ids.include?(params[:id].to_i)
      contact = Contact.find(params[:id])
      contact.update_attributes(params["contact"])
      render json: contact
    else
      render :json => {:text => "Contact with sich id does not exist"}
    end
  end

  def destroy
    all_contact_ids = Contact.all.map(&:id)
    if all_contact_ids.include?(params[:id].to_i)
      contact = Contact.where(:user_id => params[:user_id], :id => params[:id]).destroy_all
      render json: {:status => "OK"}
    end
  end


end
