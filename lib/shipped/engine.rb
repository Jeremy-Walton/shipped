module Shipped
  class Engine < ::Rails::Engine
    isolate_namespace Shipped

    initializer "shipped.assets.precompile" do |app|
      app.config.assets.precompile += %w[ shipped/application.js shipped/application.css ]
    end
  end
end
