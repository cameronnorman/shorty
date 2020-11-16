require 'bundler'

Bundler.require

set :port, 3000
disable :strict_paths

urls = {}

before do
  @site_url = ENV['SITE_URL'] || "http://localhost:3000"
end

get '/' do
  erb :index
end

get '/save' do
  @short_id = (0...8).map { (65 + rand(26)).chr }.join
  urls[@short_id] = params[:url]

  erb :index
end

get '/:short_id' do
  redirect urls[params[:short_id]]
end
