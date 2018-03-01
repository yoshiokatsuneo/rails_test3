class Post2sController < ApplicationController
  before_action :set_post2, only: [:show, :edit, :update, :destroy]

  # GET /post2s
  # GET /post2s.json
  def index
    @post2s = Post2.all
  end

  # GET /post2s/1
  # GET /post2s/1.json
  def show
  end

  # GET /post2s/new
  def new
    @post2 = Post2.new
  end

  # GET /post2s/1/edit
  def edit
  end

  # POST /post2s
  # POST /post2s.json
  def create
    @post2 = Post2.new(post2_params)

    respond_to do |format|
      if @post2.save
        format.html { redirect_to @post2, notice: 'Post2 was successfully created.' }
        format.json { render :show, status: :created, location: @post2 }
      else
        format.html { render :new }
        format.json { render json: @post2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post2s/1
  # PATCH/PUT /post2s/1.json
  def update
    respond_to do |format|
      if @post2.update(post2_params)
        format.html { redirect_to @post2, notice: 'Post2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @post2 }
      else
        format.html { render :edit }
        format.json { render json: @post2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post2s/1
  # DELETE /post2s/1.json
  def destroy
    @post2.destroy
    respond_to do |format|
      format.html { redirect_to post2s_url, notice: 'Post2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post2
      @post2 = Post2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post2_params
      params.require(:post2).permit(:title, :body, :published)
    end
end
