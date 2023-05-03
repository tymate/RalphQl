require_relative "lib/ralphql/version"

Gem::Specification.new do |spec|
  spec.name        = "ralph-ql"
  spec.version     = Ralphql::VERSION
  spec.authors     = ["Michel Delpierre"]
  spec.email       = ["tech@tymate.com"]
  spec.homepage    = "https://rubygems.org/gems/ralph-ql"
  spec.summary       = "A Ruby on Rails gralphql generators"
  spec.description   = ""
  spec.license     = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency 'rails', '~> 7.0', '>= 7.0.4.3'
  spec.add_development_dependency 'puma'
end
