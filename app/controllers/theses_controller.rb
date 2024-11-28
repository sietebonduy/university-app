class ThesesController < ApplicationController
  before_action :set_thesis, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @theses = Thesis.all
  end

  def show
  end

  def new
    @thesis = Thesis.new
  end

  def edit
  end

  def create
    @thesis = Thesis.new(thesis_params)

    if @thesis.save
      redirect_to @thesis, notice: "Thesis was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @thesis.update(thesis_params)
      redirect_to @thesis, notice: "Thesis was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @thesis.destroy

    redirect_to theses_path, status: :see_other, notice: "Thesis was successfully destroyed."
  end

  private
    def set_thesis
      @thesis = Thesis.find(params[:id])
    end

    def thesis_params
      params.require(:thesis).permit(:title, :student_id, :teacher_id)
    end
end
