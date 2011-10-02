class ArticlesController < ApplicationController

before_filter :authenticate

#protected

def authenticate
  authenticate_or_request_with_http_basic do |username, password|
    username == "foo" && password == "bar"
  end
end

def index
    @articles = Article.all

    respond_to do |format|
      format.html # index.html.erb
    end


  end

  # GET /orders/1/items/2
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /orders/1/items/new
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /orders/1/items
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to(@article, :notice => 'Article was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # GET /orders/1/items/2/edit
  def edit
    @article = Article.find(params[:id])
  end

  # PUT /orders/1/items/2
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:cv])
        format.html { redirect_to(@cv, :notice => 'Article was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /orders/1/items/2
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
    end
  end

end
