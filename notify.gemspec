# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{notify}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jugyo"]
  s.date = %q{2010-08-28}
  s.description = %q{The "notify" provides a function to notify on cross platform.}
  s.email = %q{jugyo.org@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "lib/notify.rb",
     "lib/notify/notifiers.rb",
     "lib/notify/notifiers/growl_notify.rb",
     "lib/notify/notifiers/lib_notify.rb",
     "lib/notify/notifiers/notify_send.rb",
     "lib/notify/notifiers/ruby_gntp.rb",
     "lib/notify/notifiers/ruby_growl.rb",
     "lib/test.rb",
     "sample.rb"
  ]
  s.homepage = %q{http://github.com/jugyo/notify}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A function to notify on cross platform.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
