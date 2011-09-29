class CvEntriesController < ApplicationController
  # GET /cv_entries
  # GET /cv_entries.xml
  def index
    @cv_entries = CvEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cv_entries }
    end
  end

  # GET /cv_entries/1
  # GET /cv_entries/1.xml
  def show
    @cv_entry = CvEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cv_entry }
    end
  end

  # GET /cv_entries/new
  # GET /cv_entries/new.xml
  def new
    @cv_entry = CvEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cv_entry }
    end
  end

  # GET /cv_entries/1/edit
  def edit
    @cv_entry = CvEntry.find(params[:id])
  end

  # POST /cv_entries
  # POST /cv_entries.xml
  def create
    @cv_entry = CvEntry.new(params[:cv_entry])

    respond_to do |format|
      if @cv_entry.save
        format.html { redirect_to(@cv_entry, :notice => 'Cv entry was successfully created.') }
        format.xml  { render :xml => @cv_entry, :status => :created, :location => @cv_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cv_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cv_entries/1
  # PUT /cv_entries/1.xml
  def update
    @cv_entry = CvEntry.find(params[:id])

    respond_to do |format|
      if @cv_entry.update_attributes(params[:cv_entry])
        format.html { redirect_to(@cv_entry, :notice => 'Cv entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cv_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cv_entries/1
  # DELETE /cv_entries/1.xml
  def destroy
    @cv_entry = CvEntry.find(params[:id])
    @cv_entry.destroy

    respond_to do |format|
      format.html { redirect_to(cv_entries_url) }
      format.xml  { head :ok }
    end
  end
end
