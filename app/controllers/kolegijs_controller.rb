class KolegijsController < ApplicationController
  # GET /kolegijs
  # GET /kolegijs.json
  def index
    @kolegijs = Kolegij.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kolegijs }
    end
  end

  # GET /kolegijs/1
  # GET /kolegijs/1.json
  def show
    @kolegij = Kolegij.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kolegij }
    end
  end

  # GET /kolegijs/new
  # GET /kolegijs/new.json
  def new
    @kolegij = Kolegij.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kolegij }
    end
  end

  # GET /kolegijs/1/edit
  def edit
    @kolegij = Kolegij.find(params[:id])
  end

  # POST /kolegijs
  # POST /kolegijs.json
  def create
    @kolegij = Kolegij.new(params[:kolegij])

    respond_to do |format|
      if @kolegij.save
        format.html { redirect_to @kolegij, notice: 'Kolegij was successfully created.' }
        format.json { render json: @kolegij, status: :created, location: @kolegij }
      else
        format.html { render action: "new" }
        format.json { render json: @kolegij.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kolegijs/1
  # PUT /kolegijs/1.json
  def update
    @kolegij = Kolegij.find(params[:id])

    respond_to do |format|
      if @kolegij.update_attributes(params[:kolegij])
        format.html { redirect_to @kolegij, notice: 'Kolegij was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kolegij.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kolegijs/1
  # DELETE /kolegijs/1.json
  def destroy
    @kolegij = Kolegij.find(params[:id])
    @kolegij.destroy

    respond_to do |format|
      format.html { redirect_to kolegijs_url }
      format.json { head :no_content }
    end
  end
end
