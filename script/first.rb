require 'addressable/uri'
require 'rest_client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json',
  # :query_values => {"id" => 3}
  #   'some_category[a_key]' => 'another value',
  #   'some_category[a_second_key]' => 'yet another value',
  #   'some_category[inner_inner_hash][key]' => 'value',
  #   'something_else' => 'aaahhhhh'
  # }
).to_s
puts url

params = {'user' => {'name' => 'Jane Doe',
    'email' => 'a@a.com'}}

puts RestClient.post(url, params)
#puts RestClient.delete(url)

# begin
#   puts RestClient.delete(url)
# rescue => e
#   p e
# end