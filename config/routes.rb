# frozen_string_literal: true

Deposit::Engine.routes.draw do
  root to: 'collection#index'

  resources :collection, only: [:index]

  scope '/collection' do
    post '/record' => 'collection#record_payments', :as => 'do_record_payments'
    get '/account_invoices' => 'collection#account_invoices', :as => 'account_invoices'
  end
end
