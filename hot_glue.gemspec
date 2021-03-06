$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "hotglue/version"
require 'byebug'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "hot-glue"
  spec.version     = HotGlue::VERSION
  spec.license     = 'Nonstandard'
  spec.date        = Time.now.strftime("%Y-%m-%d")
  spec.summary     = "A gem build scaffolding."
  spec.description = "Simple, plug & play Rails scaffold building companion for Turbo-Rails and Hotwire"
  spec.authors     = ["Jason Fleetwood-Boldt"]
  spec.email       = 'tech@datatravels.com'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)}) || f.match(%r{(gemspec|gem)$}) }
    files
  end

  spec.add_dependency "rails",  '~> 6.0'
  spec.homepage    = 'https://blog.jasonfleetwoodboldt.com/hot-glue/'
  spec.metadata    = { "source_code_uri" => "https://github.com/jasonfb/hot-glue",
                       "documentation_uri" => "https://www.instagram.com/jfbcodes/",
                       "homepage_uri" => 'https://jasonfleetwoodboldt.com/hot-glue/'}

  spec.add_runtime_dependency('kaminari', '~> 1.2')
  spec.add_runtime_dependency('haml-rails', '~> 2.0')
  spec.add_runtime_dependency('turbo-rails', '~> 0.5')
  spec.add_runtime_dependency "sass-rails"

  spec.add_dependency 'ffaker', "~> 2.16"

  spec.post_install_message = <<~MSG
    ---------------------------------------------
    Welcome to Hot Glue - A Scaffold Building Companion for Hotwire + Turbo-Rails
    
    rails generate hot_glue:scaffold Thing

        * Build plug-and-play scaffolding mixing HAML with the power of Hotwire and Turbo-Rails
        * Automatically Reads Your Models (make them before building your scaffolding!)
        * Excellent for CRUD, lists with pagination (coming soon: searching & sorting)
        * Great for prototyping.
        * Plays nicely with Devise, Kaminari, Haml-Rails, Rspec, FontAwesome
        * Create specs automatically along with the generated controllers.
        * Nest your routes model-by-model for built-in poor man's authentication.
        * Throw the scaffolding away when your app is ready to graduate to its next phase.

    see README for complete instructions.
    ---------------------------------------------
  MSG
end
