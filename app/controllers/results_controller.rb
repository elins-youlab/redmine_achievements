
class ResultsController < ApplicationController

  def index
    result = Result.new
    render locals:{result: result}
  end

end