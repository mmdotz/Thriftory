class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy]

  def index
    @sources = current_user.sources
    @user = current_user
  end


  def new
    @source = Source.new
  end

  def edit
  end

  def create
    @source = Source.new(source_params)
    @source.user_id = current_user.id

    respond_to do |format|
      if @source.save
        format.html { redirect_to sources_path, notice: 'Source was successfully created.' }
        format.json { render :show, status: :created, location: @source }
      else
        format.html { render :new }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @source.update(source_params)
        format.html { redirect_to sources_path, notice: 'Source was successfully updated.' }
        format.json { render :show, status: :ok, location: @source }

      else
        format.html { render :edit }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @source.destroy
    respond_to do |format|
      format.html { redirect_to sources_url, notice: 'Source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_source
      @source = Source.find(params[:id])
    end

    def source_params
      params.require(:source).permit(:name, :date, :address, :type_of, :latitude, :longitude)
    end
end
