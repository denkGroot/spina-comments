module Spina
  module Comments
    class Railtie < Rails::Railtie

      initializer "spina_comments.register_plugin" do
        Spina::Plugin.register do |plugin|
          plugin.name = 'Comments'
          plugin.namespace = 'comments'
        end
      end

    end
  end
end