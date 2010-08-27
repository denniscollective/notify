if system('which notify-send 2>&1 > /dev/null')
  class Notify::Notifiers::NotifySend
    Notify::Notifiers.available << self
    def notify(title, message, option = {})
      system 'notify-send', title, message
    end
  end
end
