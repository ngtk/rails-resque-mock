class HelloController < ApplicationController
  def show
    Resque.enqueue(Echo, params[:text])
    render :text => params[:text]
  end
end
