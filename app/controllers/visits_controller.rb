class VisitsController < ApplicationController
  def index
    if Site.exists?(params[:site_id])
	@visit = Site.find(params[:site_id]).visit
        @visit.count = @visit.count + 1
        @visit.save
    else
        @site = Site.new
        @site.id = params[:site_id]
	@site.title = @site.id
        @site.save
        @site.visit = Visit.new(count: 1)
    end
  end
end
