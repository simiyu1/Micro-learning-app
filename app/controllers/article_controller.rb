class ArticlesController < ApplicationController
    # GET: /articles asking the server for the data in todo -- done
    get "/articles" do
      # if the user is signed in?
      if signed_in?
        # then find the user who's session params = to user_id
        @user = User.find(session[:user_id])
        # finally disply the todo list where user_id = to current user
  
          @articles = Article.where(user_id: current_user)
          # binding.pry
          erb :"articles/index.html"
      else
        redirect "/signin"
      end
    end
  
    # GET: /articles/new -- done
    get "/articles/new" do
      if signed_in?
        @user = User.find_by(id: session[:user_id])
        erb :"/articles/new.html"
      else
        redirect "/signin"
      end
    end
  
    # POST: /articles --- done
    post "/articles" do
      # raise params.inspect
      #params {"chore"=>"raise params inspect"}
      if signed_in?
        @user = User.find(session[:user_id])
        # binding.pry
  
        if params[:chore].empty?
          redirect "/articles/new"
        else
          @user = User.find_by(:id => session[:user_id])
          # create new instance of article
          @article = Article.new
          # set the name of chore
          @article.tags = params[:chore]
          # finally save it
          @article.user_id = @user.id
          @article.save
  
          # todo = Article.create(chore: params[:chore], user_id: @user.id)
          # redirect to the show page, HTTP is stateless means instance variable in one action
          # will ever never relates to instance variable in another action
          # ser the todo id to the propeer one
          redirect "/articles"
        end
      else
        redirect "/signin"
      end
    end
    get '/articles/:id' do
      if signed_in?
        # @user = User.find_by(id: session[:user_id])
        @todo = Article.find(params[:id])
        if @todo && @todo.user == current_user
        # binding.pry
        erb :'/articles/show.html'
      else
        redirect "/signin"
      end
      else
        redirect '/signin'
      end
    end
    # GET: /articles/5
    get "/articles/:id/edit" do
      @user = User.find_by(id: session[:user_id])
      @todo = Article.find(params[:id])
      if @todo && @todo.user == current_user
  
      # there is no relation between this line and line 37 it just bcz of redirecting due to design
      # those two values are the end up equals
      erb :"/articles/edit.html"
      else
        redirect "/articles"
      end
    end
    patch '/articles/:id' do
      if signed_in?
        if params[:chore].empty?
          redirect "/articles/#{params[:id]}/edit"
        else
          @todo = Article.find_by_id(params[:id])
          if @todo && @todo.user == current_user
            if @todo.update(:chore => params[:chore])
              redirect to "/articles/#{@todo.id}"
            else
            redirect to "/articles/#{@todo.id}/edit"
            end
          else
            redirect to '/articles'
          end
        end
      else
        redirect '/signin'
      end
    end
  
    delete '/articles/:id/delete' do
     if signed_in?
       @user = User.find_by(id: session[:user_id]) if session[:user_id]
       @todo = Article.find_by_id(params[:id])
       # binding.pry
       if @todo && @todo.user == current_user
         @todo.delete
         redirect '/articles'
       end
     else
       redirect to '/signin'
     end
   end
  end