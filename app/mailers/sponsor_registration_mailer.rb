class SponsorRegistrationMailer < ApplicationMailer
	default from: "chris.lam@unt.edu"

  def sponsor_registration_email(user)
    @user = user
    mail(to: [@user.email, 'admin@gmail.com'], subject: 'Sponsor Registration Email')

  end
end
