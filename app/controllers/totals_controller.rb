
class TotalsController < ApplicationController

  def index
    total = Total.new
    render locals:{result: total}
  end

end