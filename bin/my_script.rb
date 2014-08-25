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

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { email: "gizmo@gizmo.gizmo" } }
    # { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
  )
end
 
#  patch 'users/:id'     => 'users#update'  
def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1'
  ).to_s

  puts RestClient.put(
    url,
    { user: { email: "c-still-broke@coolstuff.com" } } )
  
end

def delete_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/6'
  ).to_s

  puts RestClient.delete(
    url ) #,
    #{ user: { id: 6 } } )
end

# create_user
update_user
#delete_user

