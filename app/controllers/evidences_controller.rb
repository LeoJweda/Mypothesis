class EvidencesController < ApplicationController
  # GET /evidences
  # GET /evidences.json
  def index
    @evidences = Evidence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evidences }
    end
  end

  # GET /evidences/1
  # GET /evidences/1.json
  def show
    @evidence = Evidence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evidence }
    end
  end

  # GET /evidences/new
  # GET /evidences/new.json
  def new
    @evidence = Evidence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evidence }
    end
  end

  # GET /evidences/1/edit
  def edit
    @evidence = Evidence.find(params[:id])
  end

  # POST /evidences
  # POST /evidences.json
  def create
    @evidence = Evidence.new(params[:evidence])

    respond_to do |format|
      if @evidence.save
        format.html { redirect_to @evidence, notice: 'Evidence was successfully created.' }
        format.json { render json: @evidence, status: :created, location: @evidence }
      else
        format.html { render action: "new" }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evidences/1
  # PUT /evidences/1.json
  def update
    @evidence = Evidence.find(params[:id])

    respond_to do |format|
      if @evidence.update_attributes(params[:evidence])
        format.html { redirect_to @evidence, notice: 'Evidence was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evidences/1
  # DELETE /evidences/1.json
  def destroy
    @evidence = Evidence.find(params[:id])
    @evidence.destroy

    respond_to do |format|
      format.html { redirect_to evidences_url }
      format.json { head :ok }
    end
  end
  
  def up_vote
    Evidence.find(params[:id]).vote_up current_user
  end
  
  def down_vote
    Evidence.find(params[:id]).vote_down current_user
  end
end
