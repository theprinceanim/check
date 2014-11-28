class TermsController < ApplicationController
  before_action :set_term, only: [:create, :show, :edit, :update, :destroy]

  # GET /terms
  # GET /terms.json
  def index
      @classroom = Classroom.find params[:classroom_id]
     @terms = @classroom.terms

    respond_to do |format|
      format.html
      format.xml { render :xml => @terms }
    end
  end


  # GET /terms/1
  # GET /terms/1.json
  def show
    # @term = @classroom.terms.find params[:id]
  end

  # GET /terms/new
  def new
    @classroom = Classroom.find(params[:classroom_id])
    @term = Term.new(classroom_id: params[:classroom_id])
  end

  # GET /terms/1/edit
  def edit
    @classroom = Classroom.find(params[:classroom_id])
    @term = Term.where(classroom: @classroom).first
    render 'edit'
  end

  # POST /terms
  # POST /terms.json
  def create
    @classroom = Classroom.find(params[:classroom_id])
    @term = @classroom.terms.create(term_params)

    respond_to do |format|
      if @term.save
        format.html { redirect_to classroom_terms_url, notice: 'Term was successfully created.' }
        format.json { render :show, status: :created, location: @term }
      else
        format.html { render :new }
        format.json { render json: @term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terms/1
  # PATCH/PUT /terms/1.json
  def update
     @classroom = Classroom.find(params[:classroom_id])
    @term = Term.where(classroom: @classroom).first
    respond_to do |format|
      if @term.update(term_params)
        format.html { redirect_to classroom_terms_url, notice: 'Term was successfully updated.' }
        format.json { render :show, status: :ok, location: @term }
      else
        format.html { render :edit }
        format.json { render json: @term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terms/1
  # DELETE /terms/1.json
  def destroy
    @term = @classroom.terms.find params[:id]
    @term.destroy
    respond_to do |format|
      format.html { redirect_to classroom_terms_url, notice: 'Term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term
     @classroom = Classroom.find params[:classroom_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_params
      params.require(:term).permit(:term, :classroom_id)
    end
end
