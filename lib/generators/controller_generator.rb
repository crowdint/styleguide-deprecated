module Styleguide
  module Generators
    class ControllerGenerator < Rails::Generators::Base

      argument :controller_name, :type => :string, :banner => 'controller_name'
      source_root File.expand_path("../templates", __FILE__)
      desc "Create a controller for styleguide"

      def generate_files
        underscored = controller_name.underscore
        path = 'app/controllers/'
        view_path = "app/views/#{underscored.pluralize}/show.html.haml"
        route = underscored.gsub(/\//,'#')
        underscored = underscored.pluralize + '_controller' unless underscored.match(/_controller$/)
        @class_name = underscored.classify
        @model_name = @class_name.demodulize.match(/(.+)Controller$/)[1].underscore.singularize
        file_path = "#{path}#{underscored}.rb"
        css_path = "public/stylesheets/#{underscored.split("_").first}.css"
        template('controller.rb', file_path)
        template('view.rb',view_path)
        template('style.rb',css_path)
        route("resource :#{route}, :only => :show")
      end
    end
  end
end
