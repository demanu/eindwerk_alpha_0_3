class BookFormatsController < ApplicationController
  # GET /book_formats
  # GET /book_formats.json
  def index
    @book_formats = BookFormat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_formats }
    end
  end

  # GET /book_formats/1
  # GET /book_formats/1.json
  def show
    @book_format = BookFormat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_format }
    end
  end

  # GET /book_formats/new
  # GET /book_formats/new.json
  def new
    @book_format = BookFormat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_format }
    end
  end

  # GET /book_formats/1/edit
  def edit
    @book_format = BookFormat.find(params[:id])
  end

  # POST /book_formats
  # POST /book_formats.json
  def create
    @book_format = BookFormat.new(params[:book_format])

    respond_to do |format|
      if @book_format.save
        format.html { redirect_to @book_format, notice: 'Book format was successfully created.' }
        format.json { render json: @book_format, status: :created, location: @book_format }
      else
        format.html { render action: "new" }
        format.json { render json: @book_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_formats/1
  # PUT /book_formats/1.json
  def update
    @book_format = BookFormat.find(params[:id])

    respond_to do |format|
      if @book_format.update_attributes(params[:book_format])
        format.html { redirect_to @book_format, notice: 'Book format was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_formats/1
  # DELETE /book_formats/1.json
  def destroy
    @book_format = BookFormat.find(params[:id])
    @book_format.destroy

    respond_to do |format|
      format.html { redirect_to book_formats_url }
      format.json { head :no_content }
    end
  end
end
