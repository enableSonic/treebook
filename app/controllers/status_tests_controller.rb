class StatusTestsController < ApplicationController
  # GET /status_tests
  # GET /status_tests.json
  def index
    @status_tests = StatusTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @status_tests }
    end
  end

  # GET /status_tests/1
  # GET /status_tests/1.json
  def show
    @status_test = StatusTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @status_test }
    end
  end

  # GET /status_tests/new
  # GET /status_tests/new.json
  def new
    @status_test = StatusTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @status_test }
    end
  end

  # GET /status_tests/1/edit
  def edit
    @status_test = StatusTest.find(params[:id])
  end

  # POST /status_tests
  # POST /status_tests.json
  def create
    @status_test = StatusTest.new(params[:status_test])

    respond_to do |format|
      if @status_test.save
        format.html { redirect_to @status_test, notice: 'Status test was successfully created.' }
        format.json { render json: @status_test, status: :created, location: @status_test }
      else
        format.html { render action: "new" }
        format.json { render json: @status_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /status_tests/1
  # PUT /status_tests/1.json
  def update
    @status_test = StatusTest.find(params[:id])

    respond_to do |format|
      if @status_test.update_attributes(params[:status_test])
        format.html { redirect_to @status_test, notice: 'Status test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @status_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_tests/1
  # DELETE /status_tests/1.json
  def destroy
    @status_test = StatusTest.find(params[:id])
    @status_test.destroy

    respond_to do |format|
      format.html { redirect_to status_tests_url }
      format.json { head :no_content }
    end
  end
end
