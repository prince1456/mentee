class MentesController < ApplicationController
  before_action :set_mente, only: [:show, :edit, :update, :destroy]

  # GET /mentes
  # GET /mentes.json
  def index
    @mentes = Mente.all
  end

  # GET /mentes/1
  # GET /mentes/1.json
  def show
  end

  # GET /mentes/new
  def new
    @mente = Mente.new
  end

  # GET /mentes/1/edit
  def edit
  end

  # POST /mentes
  # POST /mentes.json
  def create
    @mente = Mente.new(mente_params)

    respond_to do |format|
      if @mente.save
        format.html { redirect_to @mente, notice: 'Mente was successfully created.' }
        format.json { render :show, status: :created, location: @mente }
      else
        format.html { render :new }
        format.json { render json: @mente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentes/1
  # PATCH/PUT /mentes/1.json
  def update
    respond_to do |format|
      if @mente.update(mente_params)
        format.html { redirect_to @mente, notice: 'Mente was successfully updated.' }
        format.json { render :show, status: :ok, location: @mente }
      else
        format.html { render :edit }
        format.json { render json: @mente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentes/1
  # DELETE /mentes/1.json
  def destroy
    @mente.destroy
    respond_to do |format|
      format.html { redirect_to mentes_url, notice: 'Mente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mente
      @mente = Mente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mente_params
      params.require(:mente).permit(:email, :name, :age, :mentor_type, :description, :question, :interests, :location, :langitude, :latitude)
    end
end
