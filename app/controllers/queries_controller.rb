class QueriesController < ApplicationController
  def index
  end

  def students
    # @search_params = params.permit(:first_name, :last_name, :birth_date, :gender, :group_id, :faculty_id, :course, :scholarship_amount, :has_children, :has_scholarship_amount)
    #
    # @students = Student.all
    #                    .by_first_name(params[:first_name])
    #                    .by_last_name(params[:last_name])
    #                    .born_on(params[:birth_date])
    #                    .by_gender(params[:gender])
    #                    .by_group(params[:group_id])
    #                    .by_group(params[:group_id])
    #                    .by_faculty(params[:faculty_id])
    #                    .by_course(params[:course])
    #                    .by_min_scholarship(params[:scholarship_amount])
    #                    .by_min_scholarship(params[:scholarship_amount])
    # @students = @students.with_children if params[:has_children] == '1'
    # @students = @students.with_scholarship if params[:has_scholarship_amount] == '1'
    # @students = @students.ordered_by_last_name
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
end
