class ProtfoliosController < ApplicationController
  before_action :set_portfolio, only: [:update,:edit,:show,:toggle_status]
  def index
    if params.present? and params[:type].present?
      if params[:type] == "ror"
        @profolios = Protfolio.ror
      elsif params[:type] == "angular"
        @profolios = Protfolio.angular
      end
    else
      @profolios = Protfolio.all
    end
  end

  def new
    @portfolio = Protfolio.new
  end

  def create
    @portfolio = Protfolio.new(whitelist_params)
    if @portfolio.save
      redirect_to protfolios_path, notice: "Portfolio created successfully"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @portfolio.update(whitelist_params)
      redirect_to protfolios_path, notice: "Portfolio updated successfully"
    else
      redirect_to protfolios_path, notice: "Portfolio not update....d"
    end
  end

  def toggle_status
    if @portfolio.draft?
      @portfolio.published!
    elsif @portfolio.published?
      @portfolio.draft!
    end
    redirect_to protfolios_path, notice: 'Portfolio Staus Updated...'
  end
  private

  def set_portfolio
    @portfolio = Protfolio.friendly.find(params[:id])
  end

  def whitelist_params
    params.require(:protfolio).permit(:title,:body)
  end
end
