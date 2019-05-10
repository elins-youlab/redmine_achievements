
class AchievementsController < ApplicationController

  def index
    achievements = Achievement.all
    render locals:{achievements: achievements}
  end

  def new
    achievement = Achievement.new
    render locals:{achievement: achievement}
  end

  def create
    achievement = Achievement.new

    achievement.update(name:params.require(:achievement).permit(:name))
    achievement.update(description:params.require(:achievement).permit(:description))
    achievement.update(prize:params.require(:achievement).permit(:prize))
    achievement.update(action:params.require(:achievement).permit(:action))
    achievement.update(from:Date.today)
    achievement.update(counter:12.0)
    achievement.update(rank:params.require(:achievement).permit(:rank))
    achievement.update(status:params.require(:achievement).permit(:status))


    # if !achievement.update(params_counter)
    #   render :new,
    #          locals: {achievement: achievement}
    # else
    #   redirect_to achievement_path(achievement)
    # end
    redirect_to achievements_path(achievement)

  end

  def show
    achievement = Achievement.find(params[:id])
    render locals: {achievement: achievement}
  end

  def edit
    achievement = Achievement.find(params[:id])
    render locals: {achievement: achievement}
  end

  def update
    # achievement= Achievement.find(params[:id])
    #
    # if achievement.update(params_counter)
    #   redirect_to achievement
    # else
    #   render 'edit'
    # end
  end

  def params_counter
    params.
        require(:achievement).permit(:name, :description, :prize, :action, :rank, :status)
  end
end