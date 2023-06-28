# frozen_string_literal: true

module Content
  VERSION = "0.1.2"
end

Rails.application.config.content_engine = {
  content_models: [ 'Story', 'Recipe' ],
  application_name: "Demo App ",
  main_theme_color: "#8A6E93",
  secondary_theme_color: "#8A6E931"
}

