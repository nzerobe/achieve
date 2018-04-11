class ContactMailer < ApplicationMailer
  def contact_mail(contact)
   @robs = robs

   mail to: @contacts.user.email, subject: "confirmation e-mail of inquiry"
  end
end
