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
      @available_notifiers ||= self.available_notifiers!
    end

    def self.available_notifiers!
      self.constants.map{|c| self.const_get(c)}.select{|c| c.is_a?(Class)}#.sort{ |c1,c2| c1.load_priority <=> c2.load_priority}
    end

    def self.default_notifier_class
      @default_notifier_class ||= (Notifiers.const_get(ENV['NOTIFY']) || self.available.first)
    end

    def default_notifier_class= klass
      @default_notifier_class = klass
    end

    def self.new *opts
      klass = default_notifier_class
      klass.new
    end
  end
end

