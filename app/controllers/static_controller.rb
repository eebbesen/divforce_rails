class StaticController < ApplicationController

  # GET /reqs
  # GET /reqs.json
  def index
    @reqs = Req.all
  end
end
