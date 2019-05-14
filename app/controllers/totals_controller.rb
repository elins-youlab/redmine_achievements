class TotalsController < ApplicationController

  def index
    user = User.find(param)
    total = Total.find(user.id)
    render locals: {total: total, user: user}
  end

end