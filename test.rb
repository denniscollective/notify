#gem install wrong
require 'wrong'
include Wrong::Assert

$:.unshift File.join(File.dirname(__FILE__), 'lib/')
require 'notify'

assert { Notify::Notifiers.available.include?(Notify::Notifiers::LibNotifyNotifier)}

@notifier = Notify.new

assert { @notifier.class.to_s =~ /Notify::Notifiers/ }

#assert neither of these raise errors
assert { rescuing{@notifier.notify("hello", "muriel")}.nil? }

assert { rescuing{Notify.notify("class", "method")}.nil? }

Notify::Notifiers.available.each do |klass|
  notifier = klass.new
  notifier.notify klass.to_s, "works"
end
