class DuenosController < ApplicationController
  # GET /duenos
  # GET /duenos.json
  def index
    @duenos = Dueno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duenos }
    end
  end

  # GET /duenos/1
  # GET /duenos/1.json
  def show
    @dueno = Dueno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dueno }
    end
  end

  # GET /duenos/new
  # GET /duenos/new.json
  def new
    @dueno = Dueno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dueno }
    end
  end

  # GET /duenos/1/edit
  def edit
    @dueno = Dueno.find(params[:id])
  end

  # POST /duenos
  # POST /duenos.json
  def create
    @dueno = Dueno.new(params[:dueno])

    respond_to do |format|
      if @dueno.save
        format.html { redirect_to @dueno, notice: 'Dueno was successfully created.' }
        format.json { render json: @dueno, status: :created, location: @dueno }
      else
        format.html { render action: "new" }
        format.json { render json: @dueno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duenos/1
  # PUT /duenos/1.json
  def update
    @dueno = Dueno.find(params[:id])

    respond_to do |format|
      if @dueno.update_attributes(params[:dueno])
        format.html { redirect_to @dueno, notice: 'Dueno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dueno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duenos/1
  # DELETE /duenos/1.json
  def destroy
    @dueno = Dueno.find(params[:id])
    @dueno.destroy

    respond_to do |format|
      format.html { redirect_to duenos_url }
      format.json { head :no_content }
    end
  end
end
