require 'spina'

module Spina
  module Comments
    class Engine < ::Rails::Engine
      isolate_namespace Spina::Comments
    end
  end
end
