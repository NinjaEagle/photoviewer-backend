class ImagesController < ApplicationController

    # GET /images
    # GET /images.json
    def index
        @images = Image.paginate(:page => params [:page])
        render json: {
            images: @images,
            page: @images.current_page #returns an integer corresponding to current page
            pages: @images.total_pages #returns an integer corresponding to total page count
        }
    end
    # GET /images/1
    # GET /images/1.json
    def show
    end

    # GET /images/new
    def new
        @image = Image.new
    end

    # POST /images
    # POST /images.json
    def create
        @image = Image.new(image_params)

        respond_to do |format|
            if @image.save
                format.html {redirect_to @image, notice: 'Image was succesfully created.'}
                format.json {render :show, status:created, location: @image}
            else
                format.html {render action: 'new'}
                format.json {render json:@image.errors, status: :unprocessible_entity }
            end
        end
    end

    # PATCH /images/1
    # PATCH /images/1.json
    def update
        respond_to do |format|
            if @images.update(image_params)
                format.html {redirect_to @image, notice: 'Image was succesfully updated.'}
                format.json {head :no_content }
            else
                format.html {render action: 'edit'}
                format.json {render json: @image.errors, status: :unprocessible_entity }
            end
        end
    end

    def destroy
        @image = Image.find(params[:id])
        @image.destroy
        render json: {message: "Successfully deleted"}
    end

    private
    def image_params
    
    end


end
