require "thor"
require "site_checker"

module SiteChecker
  class CLI < Thor

    desc "website status" , "Check http status and response time"
    def status(site="http://www.google.com")
         puts SiteChecker.status(site,true)
    end
    
   end
end
