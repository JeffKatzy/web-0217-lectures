class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new
  get 'users/new' do

  erb :new
  end
  # create
  post 'users' do
    @user = User.creat(params[:user])
#     users/@user.id
    redirect to "users/:id"
  end
  # index
  get 'users' do

    erb :index
  end
  # show
  get 'users/:id' do
    @user = User.find(params[:id])
  erb :show
  # edit
  get 'users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end
  # update
  patch 'users/:id' do
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.details = params[:user][:details]
    @user.save
  end


  # destroy
  delete 'users/:id' do
    
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
