class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
end

def highest_grade
    students = Student.all.max_by do |element|
        element.grade
    end
    render json: students
end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end
