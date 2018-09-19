require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do #TAKES THEM TO THE FORM
      erb :'pirates/new' #quotes
    end
    # code other routes/actions here
    post '/pirates' do #ONCE THEY HIT SUBMIT
      @piratename = params[:pirate][:name]
      @pirateweight = params[:pirate][:weight]
      @pirateheight = params[:pirate][:height]
      @ship1name = params[:pirate][:ships][0][:name]
      @ship1type = params[:pirate][:ships][0][:type]
      @ship1booty = params[:pirate][:ships][0][:booty]
      @ship2name = params[:pirate][:ships][1][:name]
      @ship2type = params[:pirate][:ships][1][:type]
      @ship2booty = params[:pirate][:ships][1][:booty]
      erb :'pirates/show'

    end

  end
end

# {"pirate"=>
#   {"name"=>"",
#    "weight"=>"",
#    "height"=>"",
#    "ship"=>[
#      {"name"=>"", "type"=>"", "booty"=>""},
#      {"name"=>"", "type"=>"", "booty"=>""}
#      ]
#      }
#    }
