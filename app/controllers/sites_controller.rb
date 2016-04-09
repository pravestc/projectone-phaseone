class SitesController < ApplicationController
  def index
    @sites = Site.all
    @visits = Visit.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
  end

  def create
    @site = Site.new(site_params)
    @site.id = @site.title
    @site.save
    @site.visit = Visit.new(count: 0)
    redirect_to @site
  end

  private
    def site_params
      params.require(:site).permit(:title)
    end
end
