class ExamplesController < ApplicationController
  def index
  end

  def create
    render text: params
  end

end
