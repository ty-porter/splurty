class QuotesController < ApplicationController

  protect_from_forgery prepend: true

  def index
    @quote = Quote.order("RANDOM()").first

    respond_to do |format|

      format.html
      format.json { render json: @quote }
    
    end

  end

  def create
    @quote = Quote.create(quote_params)

    if @quote.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    else
      render json: @quote, status: :created
    end
    redirect_to root_path
  end

  def about
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
