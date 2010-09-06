require "notify/notifiers"
module Notify
  def self.default_notifier
    Notifiers.default
  end

  def self.notify(title, message, option ={})
    default_notifier.notify title, message, option
  end
end

