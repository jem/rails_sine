require 'pp'
class GraphsController < ApplicationController
  def show
  end

  def data
    freq = 0.01 + params[:value].to_f / 100


    @points = []
    @points << 100.times.map do |x|
      [x, Math.sin(freq*x) + 0.3*rand]
    end
    @points << 100.times.map do |x|
      [x, Math.cos(freq*x) + 0.3*rand]
    end

    render json: @points
  end
end
