class SectionsController < ApplicationController
  def new
    section = Section.new
    achievements = Achievement.all
    render locals: {section: section, achievements: achievements}
  end

  def create
    unless Section.create(section_params)
      flash[:error] = 'Не удалось сохранить группу'
    end
    redirect_to achievements_path
  end

  def show
    render locals: {section: Section.find(params[:id])}
  end

  def update
    section = Section.find(params[:id])

    if section.update(section_params)
      redirect_to section
    else
      render 'edit'
    end
  end

  def edit
    section = Section.find(params[:id])
    achievements = Achievement.all
    render locals: {section: section, achievements: achievements}
  end

  def destroy
    section = Section.find(params[:id])
    unless section.destroy
      flash[:error] = 'ошибка удаления'
    end
    redirect_to achievements_path
  end

  private

  def section_params
    params.require(:section).permit(:name, achievement_ids: [])
  end
end