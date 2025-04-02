# frozen_string_literal: true

module Shipped
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copy Shipped default files"
      source_root File.expand_path("templates", __dir__)

      def copy_config
        template "config/initializers/shipped.rb"
      end

      def copy_migrations
        rake "shipped:install:migrations"
      end
    end
  end
end
