require_relative "lib/tybo/version"

Gem::Specification.new do |spec|
  spec.name        = "genql"
  spec.version     = Tybo::VERSION
  spec.authors     = ["Michel Delpierre"]
  spec.email       = ["tech@tymate.com"]
  spec.homepage    = "https://rubygems.org/gems/genql"
  spec.summary       = "A Ruby on Rails graphql generators"
  spec.description   = ""
  spec.license     = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency 'rails', '~> 7.0', '>= 7.0.4.3'
  spec.add_development_dependency 'puma'
end
