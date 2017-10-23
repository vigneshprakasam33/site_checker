require "thor"
require "site_checker"

module SiteChecker
  class CLI < Thor

    desc "website status" , "Check http status and response time"
    def status(site)
         puts SiteChecker.status(site)
    end
    
   end
end
