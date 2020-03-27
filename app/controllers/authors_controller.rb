class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: authors
    end

    def show 
        author = Author.find(params[:id])
        render json: author, include: [:quotes]
    end
  
    def random_author
        random_author = Author.all.sample 
        render json: random_author, include: [:quotes] 
    end 
end
