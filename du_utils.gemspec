# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name = 'du_utils'
  gem.version = "0.0.1.SNAPSHOT"
  gem.license = "GPLv3"
  gem.summary = "duu"
  gem.author = "Matt J Raibert"
  gem.email = 'mattraibert@gmail.com'
  gem.executables = ["duu"]
  gem.files = ["Rakefile"]
  gem.files += Dir["lib/**/*"]
  gem.test_files = Dir["test/**/*"]
end
