class UsersController < ApplicationController

  get '/users/new' do
    erb :'/views/new'
  end

  post '/users' do
    @user = User.create(name: params["user_name"],email: params["email"],password: params["password"])
    redirect "/users/#{@user.id}"
  end

  get '/users' do
    @users = User.all
    erb :index
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end

  patch '/users/:id' do
#     need to specify which user, you are updating
    @user = User.update(name: params["user_name"],email: params["email"],password: params["password"])
    @user.save
    redirect "/users/#{@user.id}"
  end

  delete '/users/:id/delete' do
    @user = User.find(params[:id])
    @user.delete
    redirect '/users/new'
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
