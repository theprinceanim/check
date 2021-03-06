class StudentsController < ApplicationController
  before_action :set_student, only: [:create, :show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
       @term = Term.find params[:term_id]
     @students = @term.students

    respond_to do |format|
      format.html
      format.xml { render :xml => @students }
    end
    # @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show

  end

  
  # GET /students/new
  def new
    @term = Term.find(params[:term_id])
    @student = Student.new(term_id: params[:term_id])
  end

  # GET /students/1/edit
  def edit
    @term = Term.find(params[:term_id])
    @student = Student.where(term: @term).first
    render 'edit'
  end

  # POST /students
  # POST /students.json
  def create
    # @student = Student.new(student_params)

    @term  = Term.find(params[:term_id])
    @student = @term.students.create(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to term_students_url, notice: 'Student created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    @term = Term.find(params[:term_id])
    @student = Student.where(term: @term).first
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to term_students_url, notice: 'Student profile updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = @term.students.find params[:id]
    @student.destroy
   
    respond_to do |format|
      format.html { redirect_to term_students_url, notice: 'Student deleted' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      # @student = Student.find(params[:id])
      @term = Term.find params[:term_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:exams_number, :first_name, :last_name, :username, :password, :term_id)
    end
end
