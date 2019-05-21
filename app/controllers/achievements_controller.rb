
class AchievementsController < ApplicationController

  def index
    achievements = Achievement.all
    sections = Section.all
    user = User.current
    render locals:{achievements: achievements, user:user, sections: sections}
  end

  def new
    achievement = Achievement.new
    render locals:{achievement: achievement}
  end

  def create
    achievement = Achievement.new(params_counter)

    achievement.save
    redirect_to achievements_path

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
    achievement= Achievement.find(params[:id])

    if achievement.update(params_counter)
      redirect_to achievements_path
    else
      render 'edit'
    end

  end

  def destroy
    achievement = Achievement.find(params[:id])

    unless achievement.destroy
      flash[:error] = 'ошибка удаления'
    end

    redirect_to achievements_path
  end

  def assign

  end

  def params_counter
    params.
        require(:achievement).permit(:name, :description, :prize, :action, :status)
  end
end