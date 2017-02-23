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
    user = User.create(params)
    redirect to "/users/#{user.id}"
  end

  # index
  get '/users' do
    erb :index
  end

  # show
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  # edit
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  # update
  post '/users/:id' do
    User.update(params[:id], params[:user])
    # user = User.find(params[:id])
    # user.update(params[:user])
    redirect to "/users/#{user.id}"
  end

  # destroy
  post '/users/:id/delete' do
    User.delete(params[:id])
    redirect to "/users"
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
