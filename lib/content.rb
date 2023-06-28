# frozen_string_literal: true

require_relative "content/version"
require_relative "content/routes"
require_relative "content/content_crud"

module Content
  def content_hello
    puts '------------- Hello from the content gem -------------'
  end
end
