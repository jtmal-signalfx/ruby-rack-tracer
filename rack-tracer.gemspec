lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'signalfx-rack-tracer'
  spec.version       = '0.1.0'
  spec.authors       = ['SignalFx Engineers']
  spec.email         = ['eng@signalfx.com']

  spec.summary       = 'Rack OpenTracing middleware'
  spec.description   = ''
  spec.homepage      = 'https://github.com/signalfx/ruby-rack-tracer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'opentracing', '~> 0.4'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rack', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.19.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.4.0'
  spec.add_development_dependency 'signalfx_test_tracer', '~> 0.1.3'
end
