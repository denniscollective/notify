begin
  require 'libnotify'

  module Notify::Notifiers
    class LibNotifyNotifier
      def notify(title, message, option={})
        Libnotify.show(:summary => title, :body => message, :icon_path => option[:icon])
      end
    end
  end
rescue LoadError
end


