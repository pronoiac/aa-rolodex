class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  
  has_many(
    :contacts,
    class_name: "Contact",
    foreign_key: :user_id,
    primary_key: :id
  )
  
  #the link between user and a contact that was shared with her/him.
  #utilitarian association to allow for shared_contacts
  has_many(
    :contact_shares,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id
  )
  
  #a contact that was shared with the user
  has_many(
    :shared_contacts,
    through: :contact_shares,
    source: :contact
  )
end
