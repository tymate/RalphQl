require_relative "lib/ralphql/version"

Gem::Specification.new do |spec|
  spec.name        = "ralphql_generator"
  spec.version     = Ralphql::VERSION
  spec.authors     = ["Michel Delpierre"]
  spec.email       = ["tech@tymate.com"]
  spec.homepage    = "https://rubygems.org/gems/ralph_ql"
  spec.summary       = "A Ruby on Rails gralphql generators"
  spec.description   = ""
  spec.license     = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency 'rails', '~> 7.1'
  spec.add_development_dependency 'puma'
end
