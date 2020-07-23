Spina::Engine.routes.draw do
  namespace :comments, path: '' do
    namespace :admin, path: Spina.config.backend_path do
      scope '/comments' do
        resources :comments do
          member do
            post :approve
          end
        end
      end
    end
  end
end
