class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/games" do
    games = Game.all
    watchlist_games = Watchlist.all.map{|item| item[:game_id]}
    filtered_games = games.select{|game| !watchlist_games.include? game[:id]}
    filtered_games.to_json
  end

  get "/games/:id" do
    game = Game.find(params[:id])
    game.to_json
  end

  get "/watchlist" do
    watchlist = User.first.games
    watchlist.to_json
  end

  post "/watchlist" do
    item = Watchlist.create(user_id: 1, game_id: params[:game_id])
    item.to_json
  end 

  delete "/watchlist/:game_id" do
    item = User.first.watchlists.find_by(game_id: params[:game_id])
    item.destroy()
    item.to_json
  end
end
