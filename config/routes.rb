Rails.application.routes.draw do
  get 'one_product_url' => 'products#one_product_action'
  get 'all_product_url' => 'products#all_product_action'
end
