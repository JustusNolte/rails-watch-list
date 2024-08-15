require 'open-uri'
require 'json'

TMDB_CONFIG = Rails.application.config_for(:tmdb) # allows you to store configurations in a yaml file.

config_url = 'https://tmdb.lewagon.com/configuration'
config_serialized = URI.open(config_url).read
config = JSON.parse(config_serialized)

TMDB_CONFIG['base_url'] = config['images']['base_url']
TMDB_CONFIG['poster_sizes'] = config['images']['poster_sizes']  # e.g., ["w92", "w154", "w185", "w342", "w500", "w780", "original"]
TMDB_CONFIG['logo_sizes'] = config['images']['logo_sizes'] # e.g., ["w45", "w92", "w154", "w185", "w300", "w500", "original"]
