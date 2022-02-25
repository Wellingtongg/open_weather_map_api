# OpenWeatherMapAPI - Ruby API Client

Get Weather and Forecast for the city you want easily.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_weather_map_api'
```

And then execute:

```bash
$ bundle install
```

## Usage Examples

**Get weather by city**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', appid: <APPID>)
```

**Get weather by latitude an longitude**

```ruby
OpenWeatherMapApi.get_weather(lat: '51.5085', lon: '-0.1257', appid: <APPID>)
```

**Get forecast by city**

```ruby
OpenWeatherMapApi.get_forecast(q: 'florianopolis', appid: <APPID>)
```

**Get forecast by latitude an longitude**

```ruby
OpenWeatherMapApi.get_forecast(lat: '51.5085', lon: '-0.1257', appid: <APPID>)
```

**Get weather in Celsius**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', units: 'metric', appid: <APPID>)
```

**Get weather in Fahrenheit**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', units: 'imperial', appid: <APPID>)
```

**Get weather response in Portuguese**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', lang: 'pt_br', appid: <APPID>)
```

**Get weather response format in xml**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', mode: 'xml', appid: <APPID>)
```

**Get weather response format in html**

```ruby
OpenWeatherMapApi.get_weather(q: 'florianopolis', mode: 'html', appid: <APPID>)
```

## Props

**Weather**

| Prop                   | Type                           | Default    | Note                                             |
| ---------------------- | ------------------------------ | ---------- | ------------------------------------------------ |
| `lat, lon`             | `string`                       | `required` | Geographical coordinates (latitude, longitude)   |
| `appid`                | `string`                       | `required` | Your unique API key. [Learn more](https://home.openweathermap.org/api_keys) |
| `mode`                 | `json, xml, html`              | `json`     | Response format                                  |
| `units`                | `standard, metric, imperial`   | `standard` | Units of measurement: standard: `Kelvin`, metric: `Celsius`, imperial: `Fahrenheit` |
| `lang`                 | `string`                       | `en`       | You can use this parameter to get the output in your language. [Learn more](https://openweathermap.org/current#multi) |

**Forecast**

| Prop                   | Type                           | Default    | Note                                             |
| ---------------------- | ------------------------------ | ---------- | ------------------------------------------------ |
| `lat, lon`             | `string`                       | `required` | Geographical coordinates (latitude, longitude)   |
| `appid`                | `string`                       | `required` | Your unique API key. [Learn more](https://home.openweathermap.org/api_keys) |
| `mode`                 | `json, xml, html`              | `json`     | Response format                                  |
| `units`                | `standard, metric, imperial`   | `standard` | Units of measurement: standard: `Kelvin`, metric: `Celsius`, imperial: `Fahrenheit` |
| `lang`                 | `string`                       | `en`       | You can use this parameter to get the output in your language. [Learn more](https://openweathermap.org/current#multi) |
| `cnt`                  | `string`                       | `optional` | A number of timestamps, which will be returned in the API response |                 
