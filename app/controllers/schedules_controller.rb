class SchedulesController < ApplicationController
  before_action :set_discipline, only: %i[ show edit update destroy ]

  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      redirect_to @schedule, notice: "Schedule was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to @schedule, notice: "Schedule was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @schedule.destroy

    redirect_to schedule_path, status: :see_other, notice: "Schedule was successfully destroyed."
  end

  private
  def set_discipline
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:discipline_id, :teacher_id, :group_id, :class_type_id, :start_time)
  end
end
