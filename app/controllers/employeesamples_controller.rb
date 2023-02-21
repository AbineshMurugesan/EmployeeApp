class EmployeesamplesController < ApplicationController
  before_action :set_employeesample, only: %i[ show edit update destroy ]

  # GET /employeesamples or /employeesamples.json
  def index
    @employeesamples = Employeesample.all
  end

  # GET /employeesamples/1 or /employeesamples/1.json
  def show
  end

  # GET /employeesamples/new
  def new
    @employeesample = Employeesample.new
  end

  # GET /employeesamples/1/edit
  def edit
  end

  # POST /employeesamples or /employeesamples.json
  def create
    @employeesample = Employeesample.new(employeesample_params)

    respond_to do |format|
      if @employeesample.save
        format.html { redirect_to employeesample_url(@employeesample), notice: "Employeesample was successfully created." }
        format.json { render :show, status: :created, location: @employeesample }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employeesample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeesamples/1 or /employeesamples/1.json
  def update
    respond_to do |format|
      if @employeesample.update(employeesample_params)
        format.html { redirect_to employeesample_url(@employeesample), notice: "Employeesample was successfully updated." }
        format.json { render :show, status: :ok, location: @employeesample }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employeesample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeesamples/1 or /employeesamples/1.json
  def destroy
    @employeesample.destroy

    respond_to do |format|
      format.html { redirect_to employeesamples_url, notice: "Employeesample was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeesample
      @employeesample = Employeesample.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeesample_params
      params.require(:employeesample).permit(:Empname, :Empage)
    end
end
