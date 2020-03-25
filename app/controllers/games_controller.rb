class GamesController < ApplicationController

<<<<<<< HEAD
    def start_a_game
        g1 = Game.create()
        question = QuoteGame.create(game: g1, quote: g1.new_quote)
        render json: quesiton
    end

    def submit_a_question
        question = Question.find()
        question.update()
        if g1.finished
            redirect_to 
        else
            question = QuoteGame.create(...)
            render json: question
        end
    end

    def end_a_game
        g1 = Game.find

        render json: Game.leaderboard
    end
=======

    def start_game 
        game = Game.new 
        random_quotes = Quote.all.sample(10)
        quote_author = random_quotes.map{|q| q.author}.uniq
        # random_quote_content = random_quotes.each{|q| q.content} 
        random_author = Author.all.sample
        
        render json: [ quotes: random_quotes, authors: quote_author ]
        
    end 



>>>>>>> f8b494c2ace25d99c9df26819b79b9e41cc4b253
end
