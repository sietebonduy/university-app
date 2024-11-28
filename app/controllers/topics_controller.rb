class TopicsController < ApplicationController
  before_action :set_topic, only: %i[ show edit update destroy ]
  before_action :check_if_admin

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: "Topic was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: "Topic was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topic.destroy

    redirect_to topics_path, status: :see_other, notice: "Topic was successfully destroyed."
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:name, :teacher_id, :department_id, :kind, :pass_date).merge(kind: params[:topic][:kind].to_i)
    end
end
