["sinatra", "sass", "haml"].each(&method(:require))

Haml::Options.defaults[:ugly] = true
Haml::Options.defaults[:remove_whitespace] = true

get "/" do
	haml :index
end

get "/scss/:style.css" do
	content_type 'text/css', :charset => 'utf-8'
	scss(:"../assets/scss/#{params[:style]}", :style => :compressed)
end