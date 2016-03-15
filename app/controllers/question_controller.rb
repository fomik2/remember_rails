class QuestionController < ApplicationController

  before_action :find_obj, only: [:show, :destroy]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
      flash[:notice] = "Вопрос сохранен и отправлен"
    else
      flash[:notice] = "Что-то пошло не так"
    end
  end

  def view
    @questions = Question.all.order(:like)
  end

  def show

  end

  def destroy
    @question.destroy
    redirect_to root_path
  end

private

  def find_obj
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:question, :text)
  end

end
