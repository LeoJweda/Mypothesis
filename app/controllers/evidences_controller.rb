class EvidencesController < ApplicationController
  authorize_resource
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
    @hypothesis = Hypothesis.find(params[:hypothesis_id])
    @evidence = Evidence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evidence }
    end
  end

  # GET /evidences/1/edit
  def edit
    @hypothesis = Hypothesis.find(params[:hypothesis_id])
    @evidence = Evidence.find(params[:id])
  end

  # POST /evidences
  # POST /evidences.json
  def create
    @hypothesis = Hypothesis.find(params[:hypothesis_id])
    params[:evidence][:hypothesis] = @hypothesis
    @evidence = current_user.evidences.build(params[:evidence])

    respond_to do |format|
      if @evidence.save
        format.html { redirect_to @evidence.hypothesis, notice: 'Evidence was successfully created.' }
        format.json { render json: @evidence, status: :created, location: @evidence }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /evidences/1
  # PUT /evidences/1.json
  def update
    @evidence = Evidence.find(params[:id])

    respond_to do |format|
      if @evidence.update_attributes(params[:evidence])
        format.html { redirect_to @evidence.hypothesis, notice: 'Evidence was successfully updated.' }
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
      format.html { redirect_to @evidence.hypothesis }
      format.json { head :ok }
      format.js   { render :nothing => true }
    end
  end
  
  def up_vote
    @evidence = Evidence.find(params[:id])
    @voted = @evidence.vote_up current_user
    
    respond_to do |format|
      if @voted
        flash[:success] = 'Upvoted'
        format.json { render :json =>{:result => "ok", :message=>"Evidence #{params[:id]} was upvoted", :resource_id=>params[:id], :score => @evidence.score.to_s() } }
      else
        format.json { render :json => { :result=>"failed", :error=>"Cannot find Invitation #{params[:id]}", :resource_id=>params[:id] } }
      end
    end
  end
  
  def down_vote
    @evidence = Evidence.find(params[:id])
    @voted = @evidence.vote_down current_user
    
    respond_to do |format|
      if @voted
        flash[:success] = 'Downvoted'
        format.json { render :json =>{:result => "ok", :message=>"Evidence #{params[:id]} was downvoted", :resource_id=>params[:id], :score => @evidence.score.to_s() } }
      else
        format.json { render :json => { :result=>"failed", :error=>"Cannot find Invitation #{params[:id]}", :resource_id=>params[:id] } }
      end
    end
  end
end
