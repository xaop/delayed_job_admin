module DelayedJobAdmin
  class Engine < Rails::Engine
  end
  
  def self.jquery_url
    @jquery_url ||= "https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"
  end
  
  def self.jquery_url=(url)
    @jquery_url = url
  end
end
