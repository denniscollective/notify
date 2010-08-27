begin
  require 'ruby_gntp'
rescue LoadError
end

if defined? ::GNTP
  class Notify::Notifiers::RubyGntp
    Notify::Notifiers.available << self
    def notify(title, message, option = {})
      GNTP.notify :app_name => "ruby", :title => title, :text => message, :icon => option[:icon] || "", :sticky => option[:sticky] || false
    end
  end
end
