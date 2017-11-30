class RegistrationMailer < ApplicationMailer
	default from: "chris.lam@unt.edu"

  def registration_email(user)
    @user = user
    mail(to: [@user.email, 'admin@gmail.com'], subject: 'Registration Email')

  end
end
