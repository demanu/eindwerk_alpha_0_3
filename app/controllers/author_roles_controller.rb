class AuthorRolesController < ApplicationController
  # GET /author_roles
  # GET /author_roles.json
  def index
    @author_roles = AuthorRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @author_roles }
    end
  end

  # GET /author_roles/1
  # GET /author_roles/1.json
  def show
    @author_role = AuthorRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @author_role }
    end
  end

  # GET /author_roles/new
  # GET /author_roles/new.json
  def new
    @author_role = AuthorRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @author_role }
    end
  end

  # GET /author_roles/1/edit
  def edit
    @author_role = AuthorRole.find(params[:id])
  end

  # POST /author_roles
  # POST /author_roles.json
  def create
    @author_role = AuthorRole.new(params[:author_role])

    respond_to do |format|
      if @author_role.save
        format.html { redirect_to @author_role, notice: 'Author role was successfully created.' }
        format.json { render json: @author_role, status: :created, location: @author_role }
      else
        format.html { render action: "new" }
        format.json { render json: @author_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /author_roles/1
  # PUT /author_roles/1.json
  def update
    @author_role = AuthorRole.find(params[:id])

    respond_to do |format|
      if @author_role.update_attributes(params[:author_role])
        format.html { redirect_to @author_role, notice: 'Author role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @author_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /author_roles/1
  # DELETE /author_roles/1.json
  def destroy
    @author_role = AuthorRole.find(params[:id])
    @author_role.destroy

    respond_to do |format|
      format.html { redirect_to author_roles_url }
      format.json { head :no_content }
    end
  end
end
