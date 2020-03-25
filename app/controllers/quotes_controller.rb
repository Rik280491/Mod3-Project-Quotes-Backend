class QuotesController < ApplicationController

    def index 
        quotes = Quote.all
        render json: quotes 
    end


    def show 
        quote = Quote.find(params[:id])
        render json: quote, include: [:author]
    end 

    # def random_quote
    #     # random_quote = Quote.all.sample 
    #     game = Game.find(...)
    #     game.random_question
    #     render json: random_quote, include: [:author] 
    # end 

    # def start_game
    #     # instantiate new game
    #     # get 10 random quotes
    #     # for each quote, get a random author
        
        
        
    #     render json: [quote1, quote2..., quote10]
    # end

    def end_game

    end

end
