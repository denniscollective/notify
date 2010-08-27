module Notify
  module Notifiers
    #it's a little gross to have this in here, need to hack a better default system together
    unless defined? __DIR__
      __DIR__ = File.dirname(__FILE__)
    end

    Dir[File.join(__DIR__, "notifiers/*.rb")].each do |filename|
      require filename
    end
    def self.available
      self.constants.map {|c| self.const_get(c)}.select{|c| c.is_a?(Class)}
    end

    @@default_notifier_class ||= (ENV['NOTIFY'] || self.available.first)

    def self.new *opts
      klass = @@default_notifier_class
      klass.new
    end
  end
end

