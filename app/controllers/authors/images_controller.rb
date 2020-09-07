module Authors
class ImagesController < AuthorsController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  def index
    @images = current_author.images
  end

  # GET /images/1
  def show
  end

  # GET /images/new
  def new
    @image = current_author.images.build
  end

  # GET /images/1/edit
  def edit
  end


  # POST /images
  def create
    @image = current_author.images.build(image_params)

    if @image.save
      redirect_to @image
    else
      render :new
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      redirect_to @image
    else
      render :edit
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end

  
  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit(:title, :photo, :published, :published_post)
      end
    end
  end

