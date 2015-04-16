class UserMailer < ApplicationMailer
  def free(user)
    @user = user
    mail(to: user.email, subject: 'Welcome to Arrange an Exchange!', from: 'Arrange An Exchange <signup@arrangeanexchange.com>')
  end
end
