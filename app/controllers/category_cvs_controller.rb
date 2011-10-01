class CategoryCvsController < ApplicationController
  # GET /category_cvs
  # GET /category_cvs.xml
  def index
    @category_cvs = CategoryCv.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @category_cvs }
    end
  end

  # GET /category_cvs/1
  # GET /category_cvs/1.xml
  def show
    @category_cv = CategoryCv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category_cv }
    end
  end

  # GET /category_cvs/new
  # GET /category_cvs/new.xml
  def new
    @category_cv = CategoryCv.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category_cv }
    end
  end

  # GET /category_cvs/1/edit
  def edit
    @category_cv = CategoryCv.find(params[:id])
  end

  # POST /category_cvs
  # POST /category_cvs.xml
  def create
    @category_cv = CategoryCv.new(params[:category_cv])

    respond_to do |format|
      if @category_cv.save
        format.html { redirect_to(@category_cv, :notice => 'Category cv was successfully created.') }
        format.xml  { render :xml => @category_cv, :status => :created, :location => @category_cv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category_cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /category_cvs/1
  # PUT /category_cvs/1.xml
  def update
    @category_cv = CategoryCv.find(params[:id])

    respond_to do |format|
      if @category_cv.update_attributes(params[:category_cv])
        format.html { redirect_to(@category_cv, :notice => 'Category cv was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category_cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /category_cvs/1
  # DELETE /category_cvs/1.xml
  def destroy
    @category_cv = CategoryCv.find(params[:id])
    @category_cv.destroy

    respond_to do |format|
      format.html { redirect_to(category_cvs_url) }
      format.xml  { head :ok }
    end
  end
end
