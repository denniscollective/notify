begin
require 'libnotify'
rescue LoadError
end

if defined? ::Libnotify
  class Notify::Notifiers::LibNotifyNotifier
    Notify::Notifiers.available << self
    def notify(title, message, option={})
      Libnotify.show(:summary => title, :body => message, :icon_path => option[:icon])
    end
  end
end


