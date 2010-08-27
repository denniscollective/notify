if system('which growlnotify 2>&1 > /dev/null')
  class Notify::Notifiers::GrowlNotify
    Notify::Notifiers.available << self
    def notify(title, message, option = {})
      system 'growlnotify', '-t', title, '-m', message
    end
  end
end
