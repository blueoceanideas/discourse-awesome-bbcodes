# name: discourse-awesome-bbcodes
# about: BBCode tags with multiline support.
# version: 1.7.1
# authors: David Montoya, Charles-Pierre Astolfi
# url: https://github.com/rux-pizza/discourse-awesome-bbcodes

# Typeface fonts
register_asset 'stylesheets/typefaces.scss'

# Discourse BBCodes
register_asset 'stylesheets/discourse.scss'

# Details Stylesheet
register_asset 'stylesheets/details.scss'

# Include fonts in asset pipeline
plugin_path = File.expand_path(File.dirname(__FILE__))
Rails.configuration.assets.paths << File.join(plugin_path, "assets", "fonts")
Dir.glob("#{plugin_path}/assets/fonts/*").each do |path|
  Rails.configuration.assets.precompile << path
end
