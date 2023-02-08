class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    layout false

    def index
        if(params[:id])
            @article=Author.find(params[:id])
            render json: @article, :include => [:books]
        elsif
        author=Author.all 
        render json: author
        end

    end

    def create
        c=Author.create(name: params[:name],email: params[:email],phone: params[:phone])
        render json:c
    end
    def delete
        c=Author.find(params[:id]) 
        c.destroy
        render html: "deleted"
    end
    def update
        c=Author.find(params[:id])
        c=c.update(name: params[:name],email: params[:email],phone: params[:phone]) 
        render json: c
    end





end
