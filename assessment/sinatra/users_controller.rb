class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new


  # create
  post '/users/:id' do
#     post '/users'
    @user = User.create(params)
    @user.save
    redirect to "/users/#{@user.id}"
  end

  # index
  get '/users' do
#     @users = User.all
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
    @user = User.find(params[:id])
    erb :show
  end

  # destroy
  delete '/users/:id/delete' do
    @user = User.find(params[:id])
    @user.destroy
    redirect to '/users'
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
