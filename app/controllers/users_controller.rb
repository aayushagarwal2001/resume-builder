class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def usercreate
   @user=User.new(user_param)
   

   if @user.valid?&&@user.save
    redirect_to login_path 
   else
    a=[]
    @user.errors.messages.each do |key, value|
      a.push("#{key} error: #{value[0]}");
    end
    flash.now[:danger]=a
    render :new
   end
  end   
   private
   def user_param
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
   end
end   
