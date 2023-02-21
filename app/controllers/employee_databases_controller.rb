class EmployeeDatabasesController < ApplicationController
  before_action :set_employee_database, only: %i[ show edit update destroy ]

  # GET /employee_databases or /employee_databases.json
  def index
    @employee_databases = EmployeeDatabase.all
  end

  # GET /employee_databases/1 or /employee_databases/1.json
  def show
  end

  # GET /employee_databases/new
  def new
    @employee_database = EmployeeDatabase.new
  end

  # GET /employee_databases/1/edit
  def edit
  end

  # POST /employee_databases or /employee_databases.json
  def create
    @employee_database = EmployeeDatabase.new(employee_database_params)

    respond_to do |format|
      if @employee_database.save
        format.html { redirect_to employee_database_url(@employee_database), notice: "Employee database was successfully created." }
        format.json { render :show, status: :created, location: @employee_database }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_databases/1 or /employee_databases/1.json
  def update
    respond_to do |format|
      if @employee_database.update(employee_database_params)
        format.html { redirect_to employee_database_url(@employee_database), notice: "Employee database was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_database }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_databases/1 or /employee_databases/1.json
  def destroy
    @employee_database.destroy

    respond_to do |format|
      format.html { redirect_to employee_databases_url, notice: "Employee database was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_database
      @employee_database = EmployeeDatabase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_database_params
      params.require(:employee_database).permit(:Name, :age, :gender, :designation)
    end
end
