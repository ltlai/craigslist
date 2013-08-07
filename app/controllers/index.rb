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
  Post.new()
end
