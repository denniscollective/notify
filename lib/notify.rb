module Notify
  require "notify/notifiers"
  def self.default_notifier
    @@default_notifier ||= Notifiers.new
  end

  def self.notify(title, message, option ={})
    default_notifier.notify title, message, option
  end

  def self.new *opts
    Notifiers.new *opts
  end
end



