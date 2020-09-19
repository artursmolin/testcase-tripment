Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :procedures do
        get '/', action: :index
      end
    end
  end
end
