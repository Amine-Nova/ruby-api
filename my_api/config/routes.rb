Rails.application.routes.draw do
  get '/', to: 'auth#index'
  scope '/api' do
    post '/signin', to: 'auth#create'
  end
end
