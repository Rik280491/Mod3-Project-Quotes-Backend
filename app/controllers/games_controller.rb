class GamesController < ApplicationController


    def start_game 
        game = Game.new 
        random_quotes = Quote.all.sample(10)
        quote_author = random_quotes.map{|q| q.author}.uniq
        # random_quote_content = random_quotes.each{|q| q.content} 
        random_author = Author.all.sample
        
        render json: [ quotes: random_quotes, authors: quote_author ]
        
    end 



end
