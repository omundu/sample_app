class AddMicropostIndicesController < ApplicationController
  # GET /add_micropost_indices
  # GET /add_micropost_indices.xml
  def index
    @add_micropost_indices = AddMicropostIndex.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @add_micropost_indices }
    end
  end

  # GET /add_micropost_indices/1
  # GET /add_micropost_indices/1.xml
  def show
    @add_micropost_index = AddMicropostIndex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @add_micropost_index }
    end
  end

  # GET /add_micropost_indices/new
  # GET /add_micropost_indices/new.xml
  def new
    @add_micropost_index = AddMicropostIndex.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @add_micropost_index }
    end
  end

  # GET /add_micropost_indices/1/edit
  def edit
    @add_micropost_index = AddMicropostIndex.find(params[:id])
  end

  # POST /add_micropost_indices
  # POST /add_micropost_indices.xml
  def create
    @add_micropost_index = AddMicropostIndex.new(params[:add_micropost_index])

    respond_to do |format|
      if @add_micropost_index.save
        format.html { redirect_to(@add_micropost_index, :notice => 'Add micropost index was successfully created.') }
        format.xml  { render :xml => @add_micropost_index, :status => :created, :location => @add_micropost_index }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @add_micropost_index.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /add_micropost_indices/1
  # PUT /add_micropost_indices/1.xml
  def update
    @add_micropost_index = AddMicropostIndex.find(params[:id])

    respond_to do |format|
      if @add_micropost_index.update_attributes(params[:add_micropost_index])
        format.html { redirect_to(@add_micropost_index, :notice => 'Add micropost index was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @add_micropost_index.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /add_micropost_indices/1
  # DELETE /add_micropost_indices/1.xml
  def destroy
    @add_micropost_index = AddMicropostIndex.find(params[:id])
    @add_micropost_index.destroy

    respond_to do |format|
      format.html { redirect_to(add_micropost_indices_url) }
      format.xml  { head :ok }
    end
  end
end
