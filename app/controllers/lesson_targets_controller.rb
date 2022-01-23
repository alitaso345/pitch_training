class LessonTargetsController < ApplicationController
  before_action :set_lesson, only: %i[new create]
  def new
    @lesson_target = @lesson.lesson_targets.new
  end

  def create
    @lesson_target = @lesson.lesson_targets.new(lesson_target_params)

    if @lesson_target.save
      redirect_to(lesson_url(@lesson_target.lesson), notice: "レッスンに使用する音を追加しました")
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def lesson_target_params
    params.require(:lesson_target).permit(:lesson_id, :note_id)
  end
end