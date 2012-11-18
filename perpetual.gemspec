Kernel.load 'lib/perpetual/version.rb'

Gem::Specification.new { |s|
	s.name          = 'perpetual'
	s.version       = Perpetual::version
	s.author        = 'Giovanni Capuano'
	s.email         = 'webmaster@giovannicapuano.net'
	s.homepage      = 'http://www.giovannicapuano.net'
	s.platform      = Gem::Platform::RUBY
	s.summary       = 'Contains some useful methods.'
	s.description   = 'Contains the more used methods not contained in Ruby. Just include the classes/modules you need to use them.'
	s.require_paths = ['lib']
	s.files         = Dir.glob('lib/**/*.rb')
}