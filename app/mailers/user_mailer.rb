class UserMailer < ApplicationMailer
  def password_reset
    @greeting = "Hi"
    mail to: "to@example.org" 
  end

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
    edit_account_activation_url(@user.activation_token)
    edit_user_url(user)
  end

end