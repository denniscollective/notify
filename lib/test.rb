require 'wrong'
include Wrong::Assert

require 'notify'

p Notify::Notifiers.available
assert { Notify::Notifiers.available.include?(Notify::Notifiers::LibNotifyNotifier)}

@notifier = Notify.new

assert { @notifier.class.to_s =~ /Notify::Notifiers/ }

assert { @notifier.notify("hello", "muriel") }

assert { Notify.notify("class", "method") }

Notify::Notifiers.available.each do |klass|
  notifier = klass.new
  notifier.notify klass.to_s, "works"
end
