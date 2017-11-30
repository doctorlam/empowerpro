class ActivationMailer < ApplicationMailer
	default from: "chris.lam@unt.edu"

  def activation_email(user)
    @user = user
    mail(to: [@user.email], subject: 'Activation Email')

  end
end
