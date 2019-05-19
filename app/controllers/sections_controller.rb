class SectionsController < ApplicationController

  def new
    section = Section.new
    achievements = Achievement.all;
    render locals:{section: section, achievements:achievements}
  end

  def create
    section = Section.new(params_counter)
    section.save
    redirect_to achievements_path
  end

  def show
    section = Section.find(params[:id])
    render locals: {section: section}
  end

  def update
    section= Section.find(params[:id])

    if section.update(params_counter)
      redirect_to section
    else
      render 'edit'
    end
  end

  def edit
    section = Section.find(params[:id])
    achievements = Achievement.all;
    render locals:{section: section, achievements:achievements}
  end

  def destroy
    section = Section.find(params[:id])
    unless section.destroy
      flash[:error] = 'ошибка удаления'
    end
    redirect_to achievements_path
  end

  def params_counter
    params.
        require(:section).permit(:name, :achievements_list)
  end
end