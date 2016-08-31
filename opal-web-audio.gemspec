Gem::Specification.new do |spec|
  spec.name        = 'opal-web-audio'
  spec.version     = '0.0.1'
  spec.authors     = ['Cichol']
  spec.email       = ['cichol@live.cn']

  spec.summary     = ''
  spec.description = ''

  spec.files       = `git ls-files`.split("\n")
  spec.require_paths = ['lib']

  spec.add_dependency 'opal', '> 0.10', '< 1.0'
end