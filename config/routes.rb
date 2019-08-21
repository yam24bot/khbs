Rails.application.routes.draw do
  get 'events/index'

  get 'events/show'

  get 'events/edit'

  get 'events/new'

  get 'events/create'

  get 'events/update'

  get 'events/destroy'

  get 'video_reviews/index'

  get 'video_reviews/show'

  get 'video_reviews/edit'

  get 'video_reviews/new'

  get 'video_reviews/create'

  get 'video_reviews/update'

  get 'video_reviews/destroy'

  root "posts#index"

  devise_for :users

  resources :posts
end
