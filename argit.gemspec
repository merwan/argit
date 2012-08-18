# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','argit','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'argit'
  s.version = Argit::VERSION
  s.author = 'Merouane Atig'
  s.email = 'merouane.atig@gmail.com'
  s.homepage = 'http://www.ammd.net'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Put your ardour project under version control'
# Add your other files here if you make them
  s.files = %w(
bin/argit
lib/argit/version.rb
lib/argit.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','argit.rdoc']
  s.rdoc_options << '--title' << 'argit' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'argit'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.0.0')
end
