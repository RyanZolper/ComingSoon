class WelcomeController < ApplicationController
  def fakehome
    @user = User.new
  end
  def portfolio
  end
  def free
    @user = User.new(user_params)
    if @user.save(user_params)
      UserMailer.free(@user).deliver_later
      redirect_to root_path, notice: "Message sent! We'll update you as soon as possible!"
    else redirect_to root_path, alert: "You forgot to enter an email. Please try again."
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
