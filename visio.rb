# coding: utf-8
require 'sinatra'

class Visio < Sinatra::Base

  get '*/css/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(:"/css/#{params[:name]}")
  end

  get '/' do
    haml :index
  end

end

