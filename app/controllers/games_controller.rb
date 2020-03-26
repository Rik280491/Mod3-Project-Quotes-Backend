class GamesController < ApplicationController


    def start_game 
        game = Game.new 
        random_quotes = Quote.all.sample(1)
        quote_author = random_quotes.map{|q| q.author}.uniq
        # random_quote_content = random_quotes.each{|q| q.content} 
        random_author = Author.all.sample
        
        render json: [ quotes: random_quotes, authors: quote_author ]
        
    end 

    def get_rounds
        random_quotes = Quote.all.sample(10)
        quote_author = random_quotes.map{|q| q.author}.uniq
        # random_quote_content = random_quotes.each{|q| q.content} 
        random_author = Author.all.sample
        
        render json: random_quotes.map { |quote|
            {
                quote: quote.content,
                author: quote.author,
                other_author: Author.random_except(quote.author)
            }
        }
    end

    def create
        game = Game.create(game_params)

        render json: game
    end

    private

    def game_params
        params.permit(:username, :score, quote_ids: [])
    end

end
