class ClassTypesController < ApplicationController
  before_action :set_class_type, only: %i[ show edit update destroy ]

  def index
    @class_types = ClassType.all
  end

  def show
  end

  def new
    @class_type = ClassType.new
  end

  def edit
  end

  def create
    @class_type = ClassType.new(control_form_params)

    if @class_type.save
      redirect_to @class_type, notice: "Class type was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @class_type.update(control_form_params)
      redirect_to @class_type, notice: "Class type was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @class_type.destroy

    redirect_to class_types_path, status: :see_other, notice: "Class type was successfully destroyed."
  end

  private
  def set_class_type
    @class_type = ClassType.find(params[:id])
  end

  def class_type_params
    params.require(:class_type).permit(:name)
  end
end