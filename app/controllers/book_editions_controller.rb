class BookEditionsController < ApplicationController
  # GET /book_editions
  # GET /book_editions.json
  def index
    @book_editions = BookEdition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_editions }
    end
  end

  # GET /book_editions/1
  # GET /book_editions/1.json
  def show
    @book_edition = BookEdition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_edition }
    end
  end

  # GET /book_editions/new
  # GET /book_editions/new.json
  def new
    @book_edition = BookEdition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_edition }
    end
  end

  # GET /book_editions/1/edit
  def edit
    @book_edition = BookEdition.find(params[:id])
  end

  # POST /book_editions
  # POST /book_editions.json
  def create
    @book_edition = BookEdition.new(params[:book_edition])

    respond_to do |format|
      if @book_edition.save
        format.html { redirect_to @book_edition, notice: 'Book edition was successfully created.' }
        format.json { render json: @book_edition, status: :created, location: @book_edition }
      else
        format.html { render action: "new" }
        format.json { render json: @book_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_editions/1
  # PUT /book_editions/1.json
  def update
    @book_edition = BookEdition.find(params[:id])

    respond_to do |format|
      if @book_edition.update_attributes(params[:book_edition])
        format.html { redirect_to @book_edition, notice: 'Book edition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_editions/1
  # DELETE /book_editions/1.json
  def destroy
    @book_edition = BookEdition.find(params[:id])
    @book_edition.destroy

    respond_to do |format|
      format.html { redirect_to book_editions_url }
      format.json { head :no_content }
    end
  end
end
