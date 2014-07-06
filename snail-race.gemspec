#encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'snail-race'
  s.version     = '0.0.0'
  s.date        = '2010-07-06'
  s.summary     = "A ridiculously way to compare the execution times of a suite of blocks."
  s.authors     = ["Guillaume Troppée"]
  s.email       = 'gtroppee@gmail.com'
  s.files       = Dir["README.md","Gemfile", "spec/*", "lib/**/*"]
  s.homepage    ='http://rubygems.org/gems/snail-race'
  s.license     = 'MIT'

  s.add_development_dependency "rspec"
  s.add_dependency "hitimes"
  s.add_dependency "hirb"
  s.add_dependency "ruby-progressbar"
end