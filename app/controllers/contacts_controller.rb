class ContactsController < ApplicationController
  before_filter :authenticate_user
  
  def index
    # all_user_ids = User.all.map(&:id)
#     # render :json => all_user_ids.include?(params[:user_id].to_i)
#     if all_user_ids.include?(params[:user_id].to_i)
#       user = User.find(params[:user_id])
      @contacts = current_user.contacts #Contact.find_by_user_id(params[:id])
      render :index
    # else
#       render :json => {:text => "User with sich id does not exist"}
#     end
  end

  def show
    contact = Contact.where(:id => params[:id], :user_id => current_user.id)
    render :json => contact
  end

  def create
    if params[:user_id] == current_user.id
      contact = Contact.new(params[:contact]).save!
      render :json => contact
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end

  def update
      contact = Contact.find(params[:id])
      if contact #and params[:user_id] == current_user.id
        contact.update_attributes(params[:contact])
        render json: contact
      else
        render :json => {:text => "Contact with sich id does not exist"}
      end
  end

  def destroy
    contact = Contact.find(params[:id])
    if contact and params[:user_id] == current_user.id
    
      contact = Contact.where(:user_id => params[:user_id], :id => params[:id]).destroy_all
      render json: {:status => "OK"}
    end
  end


end
