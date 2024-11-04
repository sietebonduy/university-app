class QueriesController < ApplicationController
  def index
  end

  def students
    @q = Student.ransack(params[:q])
    @students = @q.result(disctinct: true)
  end

  def teachers
    @q = Teacher.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end

  def topics
    @q = Topic.ransack(params[:q])
    @topics = @q.result(distinct: true)
  end

  def theses
    @q = Thesis.ransack(params[:q])
    @theses = @q.result(distinct: true)
  end

  def thesis_advisors
    @q = Teacher.thesis_advisors.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end

  def departments
    @q = Department.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end

  def teacher_schedules
    @q = Teacher.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end
end
