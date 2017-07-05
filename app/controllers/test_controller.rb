class TestController < ApplicationController
  def index
    render json: { msg: "ok" }
  end
end
