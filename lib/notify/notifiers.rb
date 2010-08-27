module Notify::Notifiers
  @@available ||= []
  def self.available
    @@available
  end

  Dir[File.join(File.dirname(__FILE__), "notifiers/*.rb")].each do |filename|
    require filename
  end

  @@default_notifier_class ||= (ENV['NOTIFY'] || self.available.first)

  def self.new *opts
    klass = @@default_notifier_class
    klass.new
  end
end

