# use rest_client gem to perform Bing search

require 'rest-client'

class Search
  def initialize(url, query)
    @data = RestClient.get(url, {:params => {:q => query}})
  end

  def print_links
    raw = @data.body.split('b_algo"><h2><a href="').drop(1)
    links = []
    raw.each do |e|
      temp = e.split('" ')
      links << temp[0]
    end
    links.each {|l| puts l}
  end
end

url = 'https://www.bing.com/search'
query = 'lake victoria'
search = Search.new(url, query)

search.print_links
