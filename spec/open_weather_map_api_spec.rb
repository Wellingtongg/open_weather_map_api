require "spec_helper"

RSpec.describe OpenWeatherMapApi do
  describe '#OpenWeatherMapService' do
    it 'get weather by city' do
      response = OpenWeatherMapApi.get_weather(q: 'florianopolis', appid: ENV['OPEN_WEATHER_MAP_APP_ID'])

      expect(response.class).to eq(Hash)
      expect(response['name']).to eq('Florianópolis')
    end

    it 'get weather by latitude an longitude' do
      response = OpenWeatherMapApi.get_weather(lat: '51.5085', lon: '-0.1257', appid: ENV['OPEN_WEATHER_MAP_APP_ID'])

      expect(response.class).to eq(Hash)
      expect(response['name']).to eq('London')
    end

    it 'get forecast by city' do
      response = OpenWeatherMapApi.get_forecast(q: 'florianopolis', appid: ENV['OPEN_WEATHER_MAP_APP_ID'])

      expect(response.class).to eq(Hash)
      expect(response['city']['name']).to eq('Florianópolis')
    end

    it 'get forecast by latitude an longitude' do
      response = OpenWeatherMapApi.get_forecast(lat: '51.5085', lon: '-0.1257', appid: ENV['OPEN_WEATHER_MAP_APP_ID'])

      expect(response.class).to eq(Hash)
      expect(response['city']['name']).to eq('London')
    end
  end
end