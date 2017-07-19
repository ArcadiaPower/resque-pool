require './lib/resque/pool/version'

Gem::Specification.new do |s|
  s.name        = 'resque-pool'
  s.version     = Resque::Pool::VERSION
  s.authors     = ['Arcadia Power']
  s.email       = ['engineering@arcadiapower.com']
  s.homepage    = 'http://github.com/ArcadiaPower/resque-pool'
  s.summary     = 'quickly and easily fork a pool of resque workers'
  s.license     = 'MIT'
  s.description = <<-EOF
    quickly and easily fork a pool of resque workers,
    saving memory (w/REE) and monitoring their uptime
  EOF

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'resque', '~> 1.22'
  # This was not locked but needs to be because of: https://stackoverflow.com/q/35893584
  s.add_dependency 'rake', '< 11.0'
  s.add_development_dependency 'rspec', '~> 2.10'
  s.add_development_dependency 'cucumber', '~> 1.2'
  s.add_development_dependency 'aruba', '~> 0.4.11'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'ronn'

  s.files         = %w( README.md Rakefile LICENSE.txt Changelog.md )
  s.files         += Dir.glob('lib/**/*')
  s.files         += Dir.glob('bin/**/*')
  s.files         += Dir.glob('man/**/*')
  s.executables   = 'resque-pool'
end
