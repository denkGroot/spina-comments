Rails.application.routes.draw do
  mount Spina::Comments::Engine => "/spina-comments"
end
