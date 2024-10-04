class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: %i[ show edit update destroy ]

  def index
    @curriculums = Curriculum.all
  end

  def show
  end

  def new
    @curriculum = Curriculum.new
  end

  def edit
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)

    if @curriculum.save
      redirect_to @curriculum, notice: "Curriculum was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @curriculum.update(curriculum_params)
      redirect_to @curriculum, notice: "Curriculum was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @curriculum.destroy

    redirect_to curriculums_path, status: :see_other, notice: "Curriculum was successfully destroyed."
  end

  private
    def set_curriculum
      @curriculum = Curriculum.find(params[:id])
    end

    def curriculum_params
      params.require(:curriculum).permit(:discipline_id, :group_id, :semester, :hours, :class_type_id, :control_form_id)
    end
end
