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
    @course = params.dig('department', 'course')
    @group_id = params.dig('department', 'group_id')
    @semester = params.dig('department', 'semester')
    @faculty_id = params.dig('department', 'faculty_id')
    @start_date = Date.parse(params.dig('department', 'start_date') || '1999-01-01')
    @end_date = Date.parse(params.dig('department', 'end_date') || Date.current.to_s)

    @departments = Department.joins(disciplines: { schedules: :group })
    @departments = @departments.where(groups: { id: @group_id }) if @group_id.present?
    @departments = @departments.where(groups: { course: @course }) if @course.present?
    @departments = @departments.where(groups: { semester: @semester }) if @semester.present?
    @departments = @departments.where(groups: { faculty_id: @faculty_id }) if @faculty_id.present?
    @departments = @departments.where("schedules.start_time BETWEEN :start_date AND :end_date", start_date: @start_date, end_date: @end_date)
    @departments = @departments.distinct
  end

  def teacher_schedules
    @course = params.dig(:teacher, :course)
    @group_id = params.dig(:teacher, :group_id)
    @faculty_id = params.dig(:teacher, :faculty_id)
    @discipline_id = params.dig(:teacher, :discipline_id)

    @teachers = Teacher.all
    @teachers = @teachers.for_course(@course) if @course.present?
    @teachers = @teachers.for_group(@group_id) if @group_id.present?
    @teachers = @teachers.for_faculty(@faculty_id) if @faculty_id.present?
    @teachers = @teachers.for_discipline(@discipline_id) if @discipline_id.present?
    @teachers = @teachers.distinct
  end

  def teacher_class_type_schedules
    @course = params.dig(:teacher, :course)
    @semester = params.dig(:teacher, :semester)
    @group_id = params.dig(:teacher, :group_id)
    @faculty_id = params.dig(:teacher, :faculty_id)
    @class_type = params.dig(:teacher, :class_type)
    @start_date = Date.parse(params.dig('teacher', 'start_date') || '1999-01-01')
    @end_date = Date.parse(params.dig('teacher', 'end_date') || Date.current.to_s)

    @teachers = Teacher.joins(disciplines: { schedules: :group })
    @teachers = @teachers.where(groups: { id: @group_id }) if @group_id.present?
    @teachers = @teachers.where(groups: { course: @course }) if @course.present?
    @teachers = @teachers.where(groups: { semester: @semester }) if @semester.present?
    @teachers = @teachers.where(groups: { faculty_id: @faculty_id }) if @faculty_id.present?
    @teachers = @teachers.where(schedules: { class_type_id: @class_type }) if @class_type.present?
    @teachers = @teachers.joins(:schedules).where("schedules.start_time BETWEEN :start_date AND :end_date", start_date: @start_date, end_date: @end_date)
    @teachers = @teachers.distinct
  end

  def students_exams
    @q = Student.ransack(params[:q])
    @students = @q.result(disctinct: true)
  end

  def students_exams_grades
    @without_bad_grades = ActiveModel::Type::Boolean.new.cast(params.dig(:q, :without_bad_grades))
    @without_ungraded = ActiveModel::Type::Boolean.new.cast(params.dig(:q, :without_ungraded))
    @excellent_grades = ActiveModel::Type::Boolean.new.cast(params.dig(:q, :excellent_grades))


    @q = Student.ransack(params[:q])
    @students = @q.result(disctinct: true)
    @students = @students.without_bad_grades if @without_bad_grades
    @students = @students.without_ungraded if @without_ungraded
    @students = @students.excellent_grades if @excellent_grades
  end

  def teacher_exams
    @q = Teacher.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end

  def students_teachers_exams
    @q = Student.ransack(params[:q])
    @students = @q.result(disctinct: true)
  end

  def teachers_load
    @q = Teacher.ransack(params[:q])
    @teachers = @q.result(distinct: true)
  end
end
