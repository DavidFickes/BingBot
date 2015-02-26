require "rubygems"
require "mechanize"
require "nokogiri"
require "open-uri"
require "net/https"
require "CGI"
require "forgery"
    
    class BingBot
            @u =5
      
    while @u > 2
      def initialize
        @agent = Mechanize.new do |agent|
          agent.user_agent_alias = 'Mac Safari'
        end
      end
  
      def login
        login_url = "https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=12&ct=1421541052&rver=6.0.5286.0&wp=MBI&wreply=https:%2F%2Fwww.bing.com%2Fsecure%2FPassport.aspx%3Frequrl%3Dhttps%253a%252f%252fwww.bing.com%252frewards%252fsignin%253fru%253dhttp%25253a%25252f%25252fwww.bing.com%25252frewards%25252fsignup%25252fwebsignup%25253fpubl%25253dBING%2526vt%253dSignup%2526ra%253d&lc=1033&id=264960"
        @agent.get(login_url)
        form = @agent.page.forms.first
        if @u == 5
          form.email = "dxb448@outlook.edu"
          form.password = " "
        elsif @u == 4
          form.email = "dinabenayad@outlook.edu"
          form.password = " "
        elsif @u == 3
          form.email = "db-c96@outlook.edu"
          form.password = ""
        end
        @agent.submit(form)
        @@u -= 1
      end
      
      def search
        @h = 30
        search_url = "http://www.bing.com/"
        while @h > 0
          @agent1 = Mechanize.new do |agent1|
           @agent.user_agent_alias = 'Mac Safari'
          @agent1.get(search_url)
          form2 = @agent1.page.forms.first
          form2.search = list.sample(1+rand(list.count))
          @h -=1
         end
       end
      
      def logout
        sign_out = @agent.click(signin.link_with(:text => /Dina/))
        log_out = @agent.click(sign_out.link_with(:text => /Sign out/))
        log_backin = @agent.click(log_out.link_with(:text => /Sign in/))
        drop_down = @agent.click(log_backin.link_with(:text => /Connect/))
      end
     
  end
  end
  end

