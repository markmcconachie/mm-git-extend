Gem::Specification.new do |s|
  s.name        = "MM Git Extend"
  s.version     = "0.1.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark McConachie"]
  s.email       = ["mark@markmcconachie.com"]
  s.homepage    = "http://markmcconachie.com"
  s.summary     = %q{Mark's Git extensions}
  s.description = %q{Some (hopefully) userful git extensions}

  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end
