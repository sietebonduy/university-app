class DisciplinesController < ApplicationController
  before_action :set_discipline, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @disciplines = Discipline.all
  end

  def show
  end

  def new
    @discipline = Discipline.new
  end

  def edit
  end

  def create
    @discipline = Discipline.new(discipline_params)

    if @discipline.save
      redirect_to @discipline, notice: "Discipline was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @discipline.update(discipline_params)
      redirect_to @discipline, notice: "Discipline was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @discipline.destroy

    redirect_to disciplines_path, status: :see_other, notice: "Discipline was successfully destroyed."
  end

  private
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    def discipline_params
      params.require(:discipline).permit(:name, :department_id)
    end
end
