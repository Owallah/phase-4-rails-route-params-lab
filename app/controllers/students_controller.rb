class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def search
    student = Student.find_by(params[{ key1: "value1", key2: "value2" }])
    render json: student
  end

end
