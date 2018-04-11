class RobMailer < ApplicationMailer
  def rob_mail(robs)
   @robs = robs

   mail to: @robs.user.email, subject: "confirmation e-mail of creating new robs"
  end
end
