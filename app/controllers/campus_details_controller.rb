class CampusDetailsController < ApplicationController
  # GET /campus_details
  # GET /campus_details.json
  def index
    @campus_details = CampusDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campus_details }
    end
  end

  # GET /campus_details/1
  # GET /campus_details/1.json
  def show
    @campus_detail = CampusDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campus_detail }
    end
  end

  # GET /campus_details/new
  # GET /campus_details/new.json
  def new
    @campus_detail = CampusDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campus_detail }
    end
  end

  # GET /campus_details/1/edit
  def edit
    @campus_detail = CampusDetail.find(params[:id])
  end

  # POST /campus_details
  # POST /campus_details.json
  def create
    @campus_detail = CampusDetail.new(params[:campus_detail])

    respond_to do |format|
      if @campus_detail.save
        format.html { redirect_to @campus_detail, notice: 'Campus detail was successfully created.' }
        format.json { render json: @campus_detail, status: :created, location: @campus_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @campus_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campus_details/1
  # PUT /campus_details/1.json
  def update
    @campus_detail = CampusDetail.find(params[:id])

    respond_to do |format|
      if @campus_detail.update_attributes(params[:campus_detail])
        format.html { redirect_to @campus_detail, notice: 'Campus detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campus_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_details/1
  # DELETE /campus_details/1.json
  def destroy
    @campus_detail = CampusDetail.find(params[:id])
    @campus_detail.destroy

    respond_to do |format|
      format.html { redirect_to campus_details_url }
      format.json { head :no_content }
    end
  end
end
