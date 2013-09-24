# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require './lib/apptamers/bootstrap/version.rb'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "apptamers-bootstrap"
  gem.homepage = "http://github.com/lukaszsliwa/apptamers-bootstrap"
  gem.license = "MIT"
  gem.summary = %Q{Apptamers Bootstrap design}
  gem.description = %Q{Apptamers Bootstrap is a basic design for SaaS application created by Apptamers}
  gem.email = "lukasz.sliwa@apptamers.com"
  gem.authors = ["Łukasz Śliwa"]

  gem.files = Dir["{app,lib}/**/*"] + ["LICENSE.txt", "Rakefile", "README.rdoc"]
  gem.require_paths = ["lib"]

  gem.version = Apptamers::Bootstrap::VERSION
end
