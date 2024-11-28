class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher, notice: "Teacher was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @teacher.update(teacher_params)
        redirect_to @teacher, notice: "Teacher was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy

    redirect_to teachers_path, status: :see_other, notice: "Teacher was successfully destroyed."
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :patronymic, :gender, :birth_date, :has_children, :salary, :salary, :category, :has_phd, :department_id, :number_of_children).merge(kind: params[:teacher][:kind].to_i)
    end
end
