class Post < ActiveRecord::Base
  belongs_to :user

  def self.create_from_postmark(mitt)
    id_from_email = mitt.to.split("@").first.split("+").last
    person = Person.find(id_from_email.to_i)
    if person
      post = person.posts.new
      post.person = person
      post.message_id = mitt.message_id
      post.title      = mitt.subject
      post.body = if mitt.text_body.blank?
        mitt.html_body
      else
        mitt.text_body
      end
      # post.photo = mitt.attachments.first.read unless mitt.attachments.empty?
      post.save
    else
      return false
    end
  end
end
