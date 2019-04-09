require 'rest-client'

def print_data
  url = 'https://www.bing.com'
  query = 'microverse'
  data = RestClient.get(url, {:params => {:q => query}})
  puts "\nHeader:\n#{data.headers}"
  puts "\nHeader:\n#{data.cookies}"
  puts "\nHeader:\n#{data.body}"
end

print_data
