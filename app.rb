require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative "db/connection"

#controllers
# require_relative "controllers/poke"

# Load models
 require_relative "models/pokemon"
# require_relative "models/song"

get "/" do
  # @first_names = first_names
  erb :home
end

get "/all_pokemon" do
@pokemons = Pokemon.all
erb :all_pokemon
end





#
# get "/artists/new" do
#   erb :"artists/new"
# end
#
# get "/artists/:id/edit" do
#   @artists = Artist.find(params[:id])
#   erb :"artists/edit"
# end
# get "/artists/:id/delete" do
#   @artists = Artist.find(params[:id])
#   erb :"artists/delete"
# end
#
# put "/artists/:id" do
#   @artists = Artist.find(params[:id])
#   @artists.update(params[:artist])
#   redirect "/artists/#{@artists.id}"
# end
#
# get "/artists" do
#   @artists = Artist.all
#   erb :"artists/index"
# end
#
#
get "/pokemon/:id" do
  @pokemons = Pokemon.find(params[:id])
#  @songs = Song.where(artist_id: params[:id])
  erb :"pokemon/show"
end

# post "/artists" do
#   @artists = Artist.create(params[:artist])
#   redirect "/artists/#{@artists.id}"
# end
#
# delete "/artists/:id" do
#   @artists = Artist.find(params[:id])
#   @artists.destroy
#   redirect "/artists"
# end
