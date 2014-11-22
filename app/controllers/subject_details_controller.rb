class SubjectDetailsController < ApplicationController
  before_action :set_subject_detail, only: [:index, :create, :show, :edit, :update, :destroy]

  # GET /subject_details
  # GET /subject_details.json
  def index
    @subject_details = @term.subject_details

    respond_to do |format|
      format.html
      format.xml { render :xml => @subject_details }
    end
  end

  # GET /subject_details/1
  # GET /subject_details/1.json
  def show
    @subject_detail = @term.subject_details.find params[:id]

  end

  # GET /subject_details/new
  def new
    # binding.pry
    @subject_detail = SubjectDetail.new(term_id: params[:term_id])

  end

  # GET /subject_details/1/edit
  def edit

    @subject_detail = SubjectDetail.find(params[:id])
  end

  # POST /subject_details
  # POST /subject_details.json
  def create
    @term  = Term.find(params[:term_id])
    @subject_detail = @term.subject_details.create(subject_detail_params)#SubjectDetail.new(subject_detail_params)
    respond_to do |format|

      if @subject_detail.save
        format.html { redirect_to term_subject_details_url, notice: 'Subject detail was successfully created.' }
        format.json { render :show, status: :created, location: @subject_detail }
      else
        format.html { render :new }
        format.json { render json: @subject_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_details/1
  # PATCH/PUT /subject_details/1.json
  def update
    respond_to do |format|
      if @subject_detail.update(subject_detail_params)
        format.html { redirect_to @subject_detail, notice: 'Subject detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_detail }
      else
        format.html { render :edit }
        format.json { render json: @subject_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_details/1
  # DELETE /subject_details/1.json
  def destroy
    @subject_detail = @term.subject_details.find params[:id]
    @subject_detail.destroy
    respond_to do |format|
      format.html { redirect_to term_subject_details_url, notice: 'Subject detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_detail
        @term = Term.find params[:term_id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_detail_params
      params.require(:subject_detail).permit(:subject_code, :subject_name, :mark, :grade, :term_id)
    end
end


