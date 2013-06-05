require "spec_helper"
describe ContactsController, :type => :controller do
  let (:user) { User.first }
  
  it 'should fail to update without correct user info' do
    
      put :update, :id => 1, :name => 'hello'
      response.body.should == '{"status":"You are not authorized"}'
  end
  
  it 'updates contact record' do
    controller.stub(:current_user).and_return(User.first)
    controller.stub(:logged_in?).and_return(true)
   
    # don't know how to do this yet
      
      put :update, :id => 3, :contact => {:name => 'Jane Doe'}
      contact = Contact.where(:user_id => 1, :id => 3).first
      contact.name.should  == 'Jane Doe'
  end
  
  it "creates new contacts" do
    
  end
  
  it "shoes contacts" do
    
  end
  
end