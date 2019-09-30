# frozen_string_literal: true

Admin::Engine.routes.draw do
  resources :articles
  root to: "articles#index"
end
