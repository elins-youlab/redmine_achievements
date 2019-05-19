class TotalsController < ApplicationController

  def index

    user = User.current
    if(user.admin)
      totals = Total.all
      render locals: {totals: totals, user: user}
    else
      total = Total.find_by(user_id: user.id)
      render locals: {total: total, user: user}
    end

    end

end