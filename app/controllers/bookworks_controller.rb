class BookworksController < ApplicationController
  # GET /bookworks
  # GET /bookworks.json
  def index
    @bookworks = Bookwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookworks }
    end
  end

  # GET /bookworks/1
  # GET /bookworks/1.json
  def show
    @bookwork = Bookwork.find(params[:id])
    @book_participants = Participant.find_all_by_bookwork_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookwork }
    end
  end

  # GET /bookworks/new
  # GET /bookworks/new.json
  def new
    @bookwork = Bookwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookwork }
    end
  end

  # GET /bookworks/1/edit
  def edit
    @bookwork = Bookwork.find(params[:id])
  end

  # POST /bookworks
  # POST /bookworks.json
  def create
    @bookwork = Bookwork.new(params[:bookwork])

    respond_to do |format|
      if @bookwork.save
        format.html { redirect_to @bookwork, notice: 'Bookwork was successfully created.' }
        format.json { render json: @bookwork, status: :created, location: @bookwork }
      else
        format.html { render action: "new" }
        format.json { render json: @bookwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookworks/1
  # PUT /bookworks/1.json
  def update
    @bookwork = Bookwork.find(params[:id])

    respond_to do |format|
      if @bookwork.update_attributes(params[:bookwork])
        format.html { redirect_to @bookwork, notice: 'Bookwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookworks/1
  # DELETE /bookworks/1.json
  def destroy
    @bookwork = Bookwork.find(params[:id])
    @bookwork.destroy

    respond_to do |format|
      format.html { redirect_to bookworks_url }
      format.json { head :no_content }
    end
  end
end
