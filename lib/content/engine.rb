module Content
  class Engine < ::Rails::Engine
    isolate_namespace Content
    
    config.load_path += Dir[File.join(File.dirname(__FILE__), '..', '..', 'config').to_s]

  end
end

