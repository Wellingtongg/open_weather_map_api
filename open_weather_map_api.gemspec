Gem::Specification.new do |s|
  s.name        = 'open_weather_map_api'
  s.version     = '0.0.2'
  s.summary     = "Implementation of OpenWeatherMap API"
  s.description = "Get Weather and Forecast for the city you want easily"
  s.authors     = ["Wellington Gomes Graciani"]
  s.email       = 'wellingtongg12@gmail.com'
  s.files       = ["lib/open_weather_map_api.rb"]
  s.homepage    = 'https://github.com/Wellingtongg/open_weather_map_api'
  s.license     = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^spec/})

  s.add_development_dependency "rspec", "~> 3.10"
  s.add_development_dependency "dotenv", "~> 2.7.6"
end
