class UsersController < ApplicationController

  def new
    @user = User.new
  end

  get '/' do
    erb :index
  end

  get '/users/new' do
    erb :create
  end

  post '/users' do
    #should extract information of the user here and use it's initializer
    #User.new(params) either meta assignment or explicit
    #@user would be assigned and passed for show
    erb :show
  end

  get '/users/:id' do
    @user = Users.find_by_id(params[:id])
    erb :show
  end

  get '/users/:id/edit' do
    @user = Users.find_by_id(params[:id])
    erb :update
  end

  patch '/users/:id' do
    #if many params expected, it should call an instance method to edit all at once with hash as param
    @user = Users.find_by_id(params[:id])
    @user.name = params[:name] #and so on
    erb :show
  end

  delete '/users/:id' do
    @user = Users.find_by_id(params[:id])
    #@user.destroy or Users.all.delete(@user)
    #erb :index or some delete confirmation splash
  end

end
