require ::File.expand_path('../../config/environment', _FILE_)
Rails.application.eager_load!

require 'action_cable/process/logging'

run ActionCable.server