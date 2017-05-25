require 'savon'

client = Savon::Client.new(wsdl: "http://localhost:3000/posts/wsdl")

result = client.call(:fetch_post, message: { id: '1' })

puts result.to_hash
