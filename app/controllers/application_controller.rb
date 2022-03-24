class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/owners" do
    Owner.all.to_json
  end

  get '/fruits' do
    Fruit.all.to_json
  end

  get '/owners/:owner_id/fruits' do
    owner = Owner.find(params[:owner_id])
    owner.fruits.to_json
  end

  post '/fruits' do
    fruit = Fruit.create(
      name: params[:name],
      price: params[:price],
      stock: params[:stock],
      health_benefit: params[:health_benefit],
      owner_id: params[:owner_id]
    ).to_json
  end

  patch '/fruits/:id' do
    fruit = Fruit.find(params[:id])
    fruit.update(
      price: params[:price],
      stock: params[:stock]
    ).to_json
  end

  delete '/fruits/:id' do
    fruit = Fruit.find(params[:id])
    fruit.destroy
    fruit.to_json
  end

end
