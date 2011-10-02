class CategoryCvsController < ApplicationController
  # GET /cvs/1/category_cvs
  def index
    # For URL like /cvs/1/category_cvs
    # Get the cv with id=1
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cvs = @cv.category_cvs
  end

  # GET /cvs/1/category_cvs/2
  def show
    @cv = Cv.find(params[:cv_id])

    # For URL like /cvs/1/category_cvs/2
    # Find an category_cv in cvs 1 that has id=2
    @category_cv = @cv.category_cvs.find(params[:id])
  end

  # GET /cvs/1/category_cvs/new
  def new
    @cv = Cv.find(params[:cv_id])


    # Associate an category_cv object with cv 1
    @category_cv = @cv.category_cvs.build
  end

  # POST /cvs/1/category_cvs
  def create
    @cv = Cv.find(params[:cv_id])

    # For URL like /cvs/1/category_cvs
    # Populate an category_cv associate with cv 1 with form data
    # cv will be associated with the category_cv
    @category_cv = @cv.category_cvs.build(params[:category_cv])
    if @category_cv.save
      # Save the category_cv successfully
      redirect_to cv_category_cv_path(@cv, @category_cv)
    else
      render :action => "new"
    end
  end

  # GET /cvs/1/category_cvs/2/edit
  def edit
    @cv = Cv.find(params[:cv_id])

    # For URL like /cvs/1/category_cvs/2/edit
    # Get category_cv id=2 for cv 1
    @category_cv = @cv.category_cvs.find(params[:id])
  end

  # PUT /cvs/1/category_cvs/2
  def update
    @cv = cv.find(params[:cv_id])
    @category_cv = CategoryCv.find(params[:id])
    if @category_cv.update_attributes(params[:category_cv])
      # Save the category_cv successfully
      redirect_to cv_category_cv_path(@cv, @category_cv)
    else
      render :action => "edit"
    end
  end

  # DELETE /cvs/1/category_cvs/2
  def destroy
    @cv = Cv.find(params[:cv_id])
    @category_cv = CategoryCv.find(params[:id])
    @category_cv.destroy

    respond_to do |format|
      format.html { redirect_to cv_category_cvs_path(@cv) }
      format.xml  { head :ok }
    end
  end

end
