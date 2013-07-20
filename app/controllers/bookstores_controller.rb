class BookstoresController < ApplicationController
  # GET /bookstores
  # GET /bookstores.json
  def index
    @bookstores = Bookstore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookstores }
    end
  end

  # GET /bookstores/1
  # GET /bookstores/1.json
  def show
    @bookstore = Bookstore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookstore }
    end
  end

  # GET /bookstores/new
  # GET /bookstores/new.json
  def new
    @bookstore = Bookstore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookstore }
    end
  end

  # GET /bookstores/1/edit
  def edit
    @bookstore = Bookstore.find(params[:id])
  end

  # POST /bookstores
  # POST /bookstores.json
  def create
    @bookstore = Bookstore.new(params[:bookstore])

    respond_to do |format|
      if @bookstore.save
        format.html { redirect_to @bookstore, notice: 'Bookstore was successfully created.' }
        format.json { render json: @bookstore, status: :created, location: @bookstore }
      else
        format.html { render action: "new" }
        format.json { render json: @bookstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookstores/1
  # PUT /bookstores/1.json
  def update
    @bookstore = Bookstore.find(params[:id])

    respond_to do |format|
      if @bookstore.update_attributes(params[:bookstore])
        format.html { redirect_to @bookstore, notice: 'Bookstore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookstores/1
  # DELETE /bookstores/1.json
  def destroy
    @bookstore = Bookstore.find(params[:id])
    @bookstore.destroy

    respond_to do |format|
      format.html { redirect_to bookstores_url }
      format.json { head :no_content }
    end
  end
end
