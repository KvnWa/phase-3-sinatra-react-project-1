class User < ActiveRecord::Base
    has_many :watchlists
    has_many :games, through: :watchlists
end