class BookController < ApplicationController

    skip_before_action :verify_authenticity_token
    layout false
  
  
  
  def show 
    cread=Book.all

    render json: cread,:include => [:author]
  end
    def index
     cread=Book.find(params[:id])

      render json: cread,:include => [:author]
    end
    def create
      a=Author.find(params[:user_id])
      c=a.books.create(title: params[:title],category: params[:category],desc: params[:desc],created_date: params[:created_date])
      render json:c
    end
    def update
      c=Book.find(params[:id])
      c=c.update(title: params[:title],category: params[:category],desc: params[:desc],created_date: params[:created_date],author_id: params[:author_id])
      render json: c
    end
  
  
    def delete
      c=Book.find(params[:id])
      c.destroy
      render html: "Deleted"
    end




















   # def find2
        #       if(params[:id])
        #           c=Article.find(params[:id])
        #           render json: c
        #       elsif(params[:a_cat])
        #           const=params[:a_cat]
        #           c=Article.where(a_cat: const)
        #           render json: c
        #       elsif(params[:a_auth])
        #           const=params[:a_auth]
        #           c=Article.where(a_auth: const)
        #           render json: c
        #       elsif(params[:a_content])
        #           c=Article.where("a_content like ?","%#{params[:a_content]}%")
        #           render json: c
        #       else
        #          c=Article.where(:a_date => params[:first_date]..params[:last_date]);
        #          render json: c
        #       end
        #   end
  
end
