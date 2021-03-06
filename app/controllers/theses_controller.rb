class ThesesController < ApplicationController
  # GET /theses
  # GET /theses.xml
  def index
    @theses = Thesis.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @theses }
    end
  end

  def tag
     @theses = Thesis.tagged_with(params[:id]).paginate(:page => params[:page], :per_page => 20)
    render :index
  end

  def tag_cloud
    @tags = Thesis.tag_counts_on(:tags)
  end

  # GET /theses/1
  # GET /theses/1.xml
  def show
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thesis }
    end
  end

  # GET /theses/new
  # GET /theses/new.xml
  def new
    @thesis = Thesis.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thesis }
    end
  end

  # GET /theses/1/edit
  def edit
    @thesis = Thesis.find(params[:id])
  end

  # POST /theses
  # POST /theses.xml
  def create
    @thesis = Thesis.new(params[:thesis])

    respond_to do |format|
      if @thesis.save
        format.html { redirect_to(@thesis, :notice => 'Thesis was successfully created.') }
        format.xml  { render :xml => @thesis, :status => :created, :location => @thesis }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thesis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /theses/1
  # PUT /theses/1.xml
  def update
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      if @thesis.update_attributes(params[:thesis])
        format.html { redirect_to(@thesis, :notice => 'Thesis was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thesis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.xml
  def destroy
    @thesis = Thesis.find(params[:id])
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to(theses_url) }
      format.xml  { head :ok }
    end
  end
end
