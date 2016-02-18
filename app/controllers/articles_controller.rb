class ArticlesController < ApplicationController
  decorates_assigned :article

  def show
    # @article = Article.first.decorate
    # @article = ArticleDecorator.new(Article.first)
    # @article = ArticleDecorator.decorate(Article.first)
    # @articles = ArticleDecorator.decorate_collection(Article.all)
    # @articles = Article.popular.decorate
    #
    # @article = ArticleDecorator.find(params[:id])
    @article = Article.find(params[:id]).decorate
    @article = Article.find(params[:id]).decorate(context: { role: :admin })
  end
end
