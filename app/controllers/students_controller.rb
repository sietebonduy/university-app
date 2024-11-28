class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: "Student was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "Student was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy

    redirect_to students_path, status: :see_other, notice: "Student was successfully destroyed."
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :patronymic, :gender, :birth_date, :has_children, :scholarship_amount, :scholarship_amount, :group_id)
    end
end
