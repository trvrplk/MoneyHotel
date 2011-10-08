class IdsController < ApplicationController
  # GET /ids
  # GET /ids.json
  def index
    @ids = Id.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ids }
    end
  end

  # GET /ids/1
  # GET /ids/1.json
  def show
    @id = Id.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @id }
    end
  end

  # GET /ids/new
  # GET /ids/new.json
  def new
    @id = Id.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @id }
    end
  end

  # GET /ids/1/edit
  def edit
    @id = Id.find(params[:id])
  end

  # POST /ids
  # POST /ids.json
  def create
    @id = Id.new(params[:id])

    respond_to do |format|
      if @id.save
        format.html { redirect_to @id, :notice => 'Id was successfully created.' }
        format.json { render :json => @id, :status => :created, :location => @id }
      else
        format.html { render :action => "new" }
        format.json { render :json => @id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ids/1
  # PUT /ids/1.json
  def update
    @id = Id.find(params[:id])

    respond_to do |format|
      if @id.update_attributes(params[:id])
        format.html { redirect_to @id, :notice => 'Id was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @id.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ids/1
  # DELETE /ids/1.json
  def destroy
    @id = Id.find(params[:id])
    @id.destroy

    respond_to do |format|
      format.html { redirect_to ids_url }
      format.json { head :ok }
    end
  end
end
