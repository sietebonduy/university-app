class ControlFormsController < ApplicationController
  before_action :set_control_form, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @control_forms = ControlForm.all
  end

  def show
  end

  def new
    @control_form = ControlForm.new
  end

  def edit
  end

  def create
    @control_form = ControlForm.new(control_form_params)

    if @control_form.save
      redirect_to @control_form, notice: "Control form was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @control_form.update(control_form_params)
      redirect_to @control_form, notice: "Control form was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @control_form.destroy

    redirect_to control_forms_path, status: :see_other, notice: "Control form was successfully destroyed."
  end

  private
  def set_control_form
    @curriculum = Curriculum.find(params[:id])
  end

  def control_form_params
    params.require(:curriculum).permit(:name)
  end
end