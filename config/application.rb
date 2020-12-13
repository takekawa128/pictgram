require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module Pictgram
  class Application < Rails::Application
  config.load_defaults 5.2
  # 下に追加
  config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
  end
end