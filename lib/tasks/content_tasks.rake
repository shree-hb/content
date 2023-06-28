# desc "Explaining what the task does"
# task :content do
#   # Task goes here
# end

namespace :content do
  desc 'Generate initializer file for content engine in HOL app'
  task generate_initializer: :environment do
    initializer_content = <<~RUBY
      require 'content/content_crud'

      ActiveSupport.on_load(:active_record) do
        include Content::ContentCrud
      end
      
      Rails.application.config.content_engine = {
        content_models: [ 'Department' ]
        application_name: "Secure Start ",
        main_theme_color: "#8A6E93",
        secondary_theme_color: "#8A6E931"
      }
    RUBY

    File.open('config/initializers/content_engine.rb', 'w') do |file|
      file.write(initializer_content)
    end

    puts 'Initializer file generated successfully!'
  end
end