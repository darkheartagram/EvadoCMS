class MycvsController < ApplicationController
  # GET /mycvs
  # GET /mycvs.xml
  def index
    @mycvs = Mycv.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mycvs }
    end
  end

  # GET /mycvs/1
  # GET /mycvs/1.xml
  def show
    @mycv = Mycv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mycv }
    end
  end

  # GET /mycvs/new
  # GET /mycvs/new.xml
  def new
    @mycv = Mycv.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mycv }
    end
  end

  # GET /mycvs/1/edit
  def edit
    @mycv = Mycv.find(params[:id])
  end

  # POST /mycvs
  # POST /mycvs.xml
  def create
    @mycv = Mycv.new(params[:mycv])

    respond_to do |format|
      if @mycv.save
        format.html { redirect_to(@mycv, :notice => 'Mycv was successfully created.') }
        format.xml  { render :xml => @mycv, :status => :created, :location => @mycv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mycv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mycvs/1
  # PUT /mycvs/1.xml
  def update
    @mycv = Mycv.find(params[:id])

    respond_to do |format|
      if @mycv.update_attributes(params[:mycv])
        format.html { redirect_to(@mycv, :notice => 'Mycv was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mycv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mycvs/1
  # DELETE /mycvs/1.xml
  def destroy
    @mycv = Mycv.find(params[:id])
    @mycv.destroy

    respond_to do |format|
      format.html { redirect_to(mycvs_url) }
      format.xml  { head :ok }
    end
  end
end
