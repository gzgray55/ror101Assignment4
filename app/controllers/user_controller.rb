class UserController < ApplicationController
def index
  @user = User.all
end

def show
  @user = User.find_by_id(params[:id])
end

def update
  @user = User.find_by_id(params[:id])
  if @student = User.find_by_id(params[:user])
  else
  flash[:notice] = "successfully updated"
    redirect_to user_path(user)
  end
end

def create
  @user=User.new(params[:user])
  if @user.save
    flash[:notice] = "successfully saved"
      redirect_to action:index
  else
    flash[:notice] = "not successfully saved"
  end
end

def destroy
  @user = User.find_by_id(params[:id])
  @user.destroy
    flash[:notice] = "user removed"
      redirect_to user_path(user)
end

def new
  @user = User.new
end

def edit
  @user = User.find(params[:id])
  #@user = User.find_by_id(params[:id])
end

end