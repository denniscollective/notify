#gem install wrong
require 'wrong'
include Wrong::Assert

$:.unshift File.join(File.dirname(__FILE__), 'lib/')
require 'notify'

assert { Notify::Notifiers.available.include?(Notify::Notifiers::LibNotifyNotifier)}

@notifier = Notify::default_notifier

assert { @notifier.class.to_s =~ /Notify::Notifiers::/ }

#assert neither of these raise errors
assert { rescuing{Notify.notify("test", "class method works - hello world!")}.nil? }
assert { rescuing{@notifier.notify("test", "instance method works")}.nil? }


Notify::Notifiers.available.each do |klass|
  notifier = klass.new
  notifier.notify "test", "#{klass.to_s}, works"
end
