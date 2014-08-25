class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: true
  validates :user_id, :uniqueness => {:scope => :email}
  
  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
  
end
