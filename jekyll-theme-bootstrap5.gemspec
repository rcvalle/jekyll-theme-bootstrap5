Gem::Specification.new do |spec|
  spec.authors     = ['Ramon de C Valle']
  spec.files       = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\0").reject { |f| f.match(%r{(\A(?:\.|Gemfile|_drafts)|(?:\.gemspec)\Z)}) }
  end
  spec.name        = 'jekyll-theme-bootstrap5'
  spec.summary     = 'A Bootstrap-based Jekyll theme.'
  spec.version     = '0.0.1'

  spec.description = ''
  spec.email       = 'rcvalle@users.noreply.github.com'
  spec.homepage    = 'https://github.com/rcvalle/jekyll-theme-bootstrap5'
  spec.license     = 'MIT'
  spec.metadata    = {}

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "webrick", "~> 1.7"
  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1"
  spec.required_ruby_version = '>= 2.3.0'
end
