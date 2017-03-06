# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require_relative './environments'
require_relative './models/post'
require_relative './helpers/route_helpers'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'

  enable :sessions

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end

  # get ALL posts
  get "/" do
    @posts = Post.order("created_at DESC")
    @title = "Welcome."
    erb :"posts/index"
  end

  # create new post
  get "/posts/create" do
    @title = "Create post"
    @post = Post.new
    erb :"posts/create"
  end

  post "/posts" do
    @post = Post.new(get_params)
    if @post.save
      save_image
      redirect "posts/#{@post.id}", :notice => 'Congrats! Love the new invention. (This message will disappear in 4 seconds.)'
    else
      redirect "posts/create", :error => 'Something went wrong. Try again. (This message will disappear in 4 seconds.)'
    end
  end

  # view post
  get "/posts/:id" do
    @post = Post.find(params[:id])
    @title = @post.title
    erb :"posts/view"
  end

  private

  def save_image
    image = params['post'][:image]
    if @filename
      file = image[:tempfile]
      path = "./public/user_images/#{filename}"
      # Write file to disk
      File.open(path, 'wb') do |f|
        f.write(file.read)
      end
    end
  end

  def filename
    @filename ||= params['post'][:image][:filename] if (params['post'][:image])
  end

  def bits
    params['post']['bits'].join(', ') if params['post']['bits']
  end

  def get_params
    {
      "title" => params['post']['title'],
      "description" => params['post']['description'],
      "user_name" => params['post']['user_name'],
      "email" => params['post']['email'],
      "bits" => bits,
      "image" => filename,
      "materials" => params['post']['materials'].split(',').join(', ')
    }
  end
