#!/usr/bin/env ruby 

# bin/my_script.rb

require "addressable/uri"
require "rest-client"

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# puts RestClient.get(url)

def create_contact  
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.json'
  ).to_s

  puts RestClient.post(
    url,
    { Contact: { name: "Contact 1", email: "contact 1 email", user_id: 2} }
    # { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
  )
end
 
#  patch 'users/:id'     => 'users#update'  
def update_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/3'
  ).to_s

  puts RestClient.put(
    url,
    { Contact: { email: "wacky_new_email@coolstuff.com" } } )
  
end

def delete_contact
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts/3'
  ).to_s

  puts RestClient.delete(
    url ) 
end

# create_contact
# update_contact
delete_contact

