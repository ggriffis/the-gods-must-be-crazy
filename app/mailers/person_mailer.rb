class PersonMailer < ActionMailer::Base
  default from: "gingergriffis@me.com", reply_to: "172c860d9f1b5ef4072e673dff1d7b05@inbound.postmarkapp.com"

  def welcome_email(person)
    @person = person
    @url  = god_guardian_angel_url(@person.guardian_angel.god, @person.guardian_angel)
    reply_to = "172c860d9f1b5ef4072e673dff1d7b05" + "+" +
                @person.id.to_s + "@inbound.postmarkapp.com"
    mail(to: @person.email, subject: 'Welcome to the Physical World',
          reply_to: reply_to)
  end
end
