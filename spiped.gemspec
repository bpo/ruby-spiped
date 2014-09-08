Gem::Specification.new do |s|
  s.name = "spiped"
  s.version = "0.0.0"

  s.authors = ["Brian P O'Rourke"]
  s.date = "2014-09-08"
  s.summary = "spiped wrapper for ruby"
  s.description = "simple wrapper that just downloads and installs spiped"
  s.email = "bpo@somnambulance.net"
  s.extensions = ["ext/spiped/extconf.rb"]

  s.files = ["ext/spiped/extconf.rb", "lib/spiped.rb"]
  s.homepage = 'https://github.com'
end
