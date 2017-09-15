class ProjectsController < ApplicationController
  def index
    @proj=Project.new
    @projs=Project.all
  end

  def edit
  end

  def create
    @proj = Project.new(project_params)
    respond_to do |format|
      if @proj.save
        format.html { redirect_to projects_path }
      else
        format.html { render :index , notice: 'Добавлено'}
      end
    end
  end

  def update
    respond_to do |format|
      if @proj.update(project_params)
         format.html { redirect_to projects_path }
      else
        format.html { render :edit , notice: 'Обновлено' }
      end
    end
  end

  def destroy
    @proj.destroy
    respond_to do |format|
      format.html { redirect_to projects_path , notice: 'Удалено' }      
    end
  end
private
   def project_params
      return params.require(:project).permit(:title)
   end

  def set_tod
    @proj = Project.find(params[:id].to_i) rescue nil?
    if @proj==false
      redirect_to  errors_path
    end
  end

end
