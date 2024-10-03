class FacultiesController < ApplicationController
  before_action :set_faculty, only: %i[ show edit update destroy ]

  def index
    @faculties = Faculty.all
  end

  def show
  end

  def new
    @faculty = Faculty.new
  end

  def edit
  end

  def create
    @faculty = Faculty.new(faculty_params)

    if @faculty.save
      redirect_to @faculty, notice: "Faculty was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
      if @faculty.update(faculty_params)
        redirect_to @faculty, notice: "Faculty was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @faculty.destroy

    redirect_to faculties_path, status: :see_other, notice: "Faculty was successfully destroyed."
  end

  private
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    def faculty_params
      params.require(:faculty).permit(:name, :dean)
    end
end
