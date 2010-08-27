begin
  require 'ruby-growl'
rescue LoadError
end

if defined? ::Growl
  class Notify::Notifiers::RubyGrowl
    Notify::Notifiers.available << self
    @@growl = Growl.new 'localhost', 'ruby', ['notify']
    def notify(title, message, option = {})
      @@growl.notify 'notify', title, message, option[:priority] || 0, option[:sticky] || false
    end
  end
end
