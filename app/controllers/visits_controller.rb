class VisitsController < ApplicationController
  def index
    @visit = Site.find(params[:site_id]).visit
        @visit.count = @visit.count + 1
    @visit.save
  end
end
