Rails.application.routes.draw do
  get 'products/:id' => 'products#product'
  get 'products' => 'products#products'
end
