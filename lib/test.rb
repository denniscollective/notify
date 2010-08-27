require 'wrong'
include Wrong::Assert

require 'notify'

assert { Notify::Notifiers.available.include? Notify::Notifiers::LibNotifyNotifier }

@notifier = Notify.new

assert { @notifier.class.to_s =~ /Notify::Notifiers/ }

assert { @notifier.notify "hello", "muriel" }

assert { Notify.notify "class", "method" }

