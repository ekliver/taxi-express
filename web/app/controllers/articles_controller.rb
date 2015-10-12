class ArticlesController < ApplicationController
#before_action :validate_user, except: [:show,:index]
before_action :authenticate_user!, only: [:show,:new]
before_action :set_article , except: [:index,:new,:create]
    #GET /articles
    def index
        #@articles variable gloval
        @articles= Article.all
    end
    #GET /articles/:id
    def show
        @article.update_visits_count
        @comment=Comment.new
    end
    #GET /articles/new
    def new
        @article=Article.new
    end
    def edit
        
    end
    #POST /articles
    def create
        #INSERT INTO
        @article = current_user.articles.new(article_params)
        if @article.save
            redirect_to @article
        else
            render :new
        end
    end
    
    
    #DELETE FROM articles
    def destroy
       
        @article.destroy #Destroy eliminar el objeto de la base de datos
        redirect_to articles_path
    end
    #PUT /article/:id
    def update
        #UPDATE
        #@article.update_atributes({title: "Nuevo titulo"})
        
        if @article.update(article_params)
        redirect_to @article
        else
            render :edit
        end
        
    end
    
    private
    
    def set_article
        @article = Article.find(params[:id]) 
    end
    
    def validate_user
       redirect_to new_user_session_path,notice: "Necesitas iniciar sesión" 
    end
    def article_params
    params.require(:article).permit(:title,:body)
    end


end
