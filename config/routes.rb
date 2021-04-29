# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'

  scope '(:locale)' do
    scope module: :users do
      resources :users, only: %i[edit update]
    end

    resources :rooms, only: %i[new create index destroy] do
      resources :messages, only: %i[create index new]
    end
  end
end
