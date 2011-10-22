class CvEntriesController < ApplicationController
    def index
    # For URL like /cvs/1/category_cvs
    # Get the cv with id=1
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])

    @cv_entries = @category_cv.cv_entries
  end

  # GET /cvs/1/category_cvs/2
  def show
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])

    @cv_entry = CvEntry.find(params[:id])
  end

  # GET /cvs/1/category_cvs/new
  def new
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])


    # Associate an category_cv object with cv 1
    @cv_entry = @category_cv.cv_entries.build
  end

  # POST /cvs/1/category_cvs
  def create
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])


    # Associate an category_cv object with cv 1
    @cv_entry = @category_cv.cv_entries.build(params[:cv_entry])


    if @cv_entry.save
      # Save the category_cv successfully
      redirect_to cv_path(@cv)
    else
      render :action => "new"
    end
  end

  # GET /cvs/1/category_cvs/2/edit
  def edit
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])

    @cv_entry = CvEntry.find(params[:id])
  end

  # PUT /cvs/1/category_cvs/2
  def update

    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])




    @cv_entry = CvEntry.find(params[:id])
    if @cv_entry.update_attributes(params[:cv_entry])
      # Save the category_cv successfully
      redirect_to cv_path(@cv)
    else
      render :action => "edit"
    end
  end

  # DELETE /cvs/1/category_cvs/2
  def destroy
    @cv = Cv.find(params[:cv_id])

    # Access all category_cvs for that cv
    @category_cv = CategoryCv.find(params[:category_cv_id])

    @cv_entry = CvEntry.find(params[:id])

    @cv_entry.destroy

    respond_to do |format|
      format.html { redirect_to cv_category_cvs_path(@cv) }
      format.xml  { head :ok }
    end
  end
end
