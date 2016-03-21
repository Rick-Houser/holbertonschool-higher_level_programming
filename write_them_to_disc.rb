require 'HTTPClient'

extheaders = {
  'User-Agent' => 'Holberton_School',
  'Authorization' => 'token 914b7070c282e25764284a8375e636a4302ac5d7'
}
# create simple client
http = HTTPClient.new
# retrieve content from specified URL
request = http.get_content('https://api.github.com/search/repositories?q=language:ruby&sort=stars&order=desc')
# create file and write http request content to it
File.open("/tmp/21", "w") do |f|
	f.write(request)
end
puts "The file was saved!"
