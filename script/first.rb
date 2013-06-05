require 'addressable/uri'
require 'rest_client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1/contacts/1.json',
  # :query_values => {"id" => 3}
  #   'some_category[a_key]' => 'another value',
  #   'some_category[a_second_key]' => 'yet another value',
  #   'some_category[inner_inner_hash][key]' => 'value',
  #   'something_else' => 'aaahhhhh'
  # }
).to_s
puts url

params = {'contact' => { 'name' => 'Olena Iv' }}

puts RestClient.post(url)


#puts RestClient.delete(url)

# begin
#   puts RestClient.delete(url)
# rescue => e
#   p e
# end