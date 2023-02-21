class Sample1sController < ApplicationController
  before_action :set_sample1, only: %i[ show edit update destroy ]

  # GET /sample1s or /sample1s.json
  def index
    @sample1s = Sample1.all
  end

  # GET /sample1s/1 or /sample1s/1.json
  def show
  end

  # GET /sample1s/new
  def new
    @sample1 = Sample1.new
  end

  # GET /sample1s/1/edit
  def edit
  end

  # POST /sample1s or /sample1s.json
  def create
    @sample1 = Sample1.new(sample1_params)

    respond_to do |format|
      if @sample1.save
        format.html { redirect_to sample1_url(@sample1), notice: "Sample1 was successfully created." }
        format.json { render :show, status: :created, location: @sample1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample1s/1 or /sample1s/1.json
  def update
    respond_to do |format|
      if @sample1.update(sample1_params)
        format.html { redirect_to sample1_url(@sample1), notice: "Sample1 was successfully updated." }
        format.json { render :show, status: :ok, location: @sample1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample1s/1 or /sample1s/1.json
  def destroy
    @sample1.destroy

    respond_to do |format|
      format.html { redirect_to sample1s_url, notice: "Sample1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample1
      @sample1 = Sample1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample1_params
      params.require(:sample1).permit(:name, :age)
    end
end
