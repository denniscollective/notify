begin
  require 'ruby-growl'
  class Notify::Notifiers::RubyGrowl
    @@growl = Growl.new 'localhost', 'ruby', ['notify']
    def notify(title, message, option = {})
      @@growl.notify 'notify', title, message, option[:priority] || 0, option[:sticky] || false
    end
  end
rescue LoadError
end

