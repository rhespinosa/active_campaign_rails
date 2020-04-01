# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_campaign_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_campaign_rails'
  spec.version       = ActiveCampaignRails::VERSION
  spec.authors       = ['Raul Espinosa']
  spec.email         = ['raul.espinosa@beora.com']

  spec.summary       = 'Simple rails wrapper for ActiveCampaign API v3'
  spec.description   = 'For more information please visit https://developers.activecampaign.com'
  spec.homepage      = 'https://github.com/rhespinosa/active_campaign_rails'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'httparty'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.7', '>= 3.7.0'
end
