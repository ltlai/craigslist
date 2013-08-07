get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  @posts = Post.where(category_id: params[:id])
  erb :display_category
end

get '/posts/new' do
  erb :create_post
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :display_post
end

post '/posts' do
  new_post = Post.new(title: params[:title], 
    category_id: params[:category],
    reply_email: params[:email],
    price: params[:price],
    description: params[:description],
    secret_key: rand(36**9).to_s(36))
  new_post.save
  @post = Post.last
  erb :display_post
end

get '/posts/:secret_key/edit' do
  @post = Post.find_by_secret_key(params[:secret_key])
  erb :edit_post
end

put '/posts/:secret_key' do
  @post = Post.find_by_secret_key(params[:secret_key])
  @post.update_attributes(
    reply_email: params[:email], 
    title: params[:title],
    price: params[:price], 
    description: params[:description]
  )
  erb :display_post
end

get '/posts/:secret_key/delete' do
  @post = Post.find_by_secret_key(params[:secret_key])
  erb :delete_post
end

delete '/posts/:secret_key' do
  post = Post.find_by_secret_key(params[:secret_key])
  post.destroy
  redirect '/'
end