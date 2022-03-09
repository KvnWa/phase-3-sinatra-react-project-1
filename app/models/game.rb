class Game < ActiveRecord::Base
    has_many :watchlists
    has_many :users, through: :watchlists
end