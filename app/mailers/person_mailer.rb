class PersonMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(person)
    @person = person
    @url  = god_guardian_angel_url(@person.guardian_angel.god, @person.guardian_angel)
    mail(to: @person.email, subject: 'Welcome to the Physical World')
  end
end
