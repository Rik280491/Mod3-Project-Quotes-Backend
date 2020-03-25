class GamesController < ApplicationController

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
end
