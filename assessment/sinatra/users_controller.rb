class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new
  get '/users/new' do
    erb :new
  end
  # create
  post '/users' do
    @user.create(params[:user])
    @user.save
    redirect to "/users/#{@user.id}"
  end

  # index
  get '/users' do
    @users = User.all
    erb :index
  end
  # show
  get '/users/:id' do
    @users = User.find_by_id(params[:id])
    erb :show
  end

  # edit
  get '/users/:id/edit' do
    @user.find_by_id(params[:id])
    erb :edit
  end

  # update
  patch '/users/:id' do
    @user.find_by_id(params[:id])
    @user.update(params[:user])
    @user.save
    redirect to "/users/#{@user.id}"
  end

  # destroy
  delete '/users/:id/delete' do
   @user = User.find_by_id(params[:id])
   @user.delete
   redirect to '/user'
 end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
