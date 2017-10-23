require "site_checker/version"
require "net/http"
require "net/https"
require "uri"

module SiteChecker
  def self.status(site="http://www.google.com")
		uri = URI.parse(site)
		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
 		start_time = Time.now
    	request = Net::HTTP::Get.new(uri.request_uri) 
    	res = http.request(request)
    	end_time = Time.now - start_time	
		
		# status
		puts "Website - #{site}"
		puts "Status - #{res.code} #{res.message}"
		puts "Response time - #{end_time} seconds"
		
	end

end
