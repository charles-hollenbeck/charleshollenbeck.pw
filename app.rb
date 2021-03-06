require 'sinatra'
require 'haml'
require 'sass'

def skills
  [
    {:skill => "Ruby", :color => "#D63333"},
    {:skill => "Ruby on Rails", :color => "#be1d1f"},
    {:skill => "Java", :color => "#b07219"},
    {:skill => "PHP", :color => "#777bb4"},
    {:skill => "Javascript", :color => "#efd84d"},
    {:skill => "HTML", :color => "#f16428"},
    {:skill => "CSS", :color => "#7ea838"},
    {:skill => "Linux", :color => "#f7bb00"},
    {:skill => "Computer Repair", :color => "#AAA"},
    {:skill => "Android Development", :color => "#A4C639"},
    {:skill => "CompTIA A+ Certified", :color => "#ef2e25"},
    {:skill => "Photoshop", :color => "#175ba6"}
  ]
end

def menu
  [
    {:link => "http://www.linkedin.com/pub/charles-hollenbeck/7a/163/49a", :image => "linkedin_alt.png"},
    {:link => "https://github.com/charles-hollenbeck", :image => "github_alt.png"},
    {:link => "https://bitbucket.org/charles-hollenbeck", :image => "bitbucket.png"},
    {:link => "https://play.google.com/store/apps/developer?id=Charles%20Hollenbeck", :image => "play.png"},
    {:link => "mailto:charles@hollenbeck.pw", :image => "gmail.png"}
  ]
end

get '/css/:name.css' do
 content_type 'text/css', :charset => 'utf-8'
 scss(:"scss/#{params[:name]}")
end

get '/' do
  haml :index
end
