class ShortFormsController < ApplicationController
  before_action :set_short_form, only: [:show, :edit, :update, :destroy]

  # GET /short_forms
  # GET /short_forms.json
  def index
    @short_forms = ShortForm.all
  end

  # GET /short_forms/1
  # GET /short_forms/1.json
  def show
  end

  # GET /short_forms/new
  def new
    @short_form = ShortForm.new
  end

  # GET /short_forms/1/edit
  def edit
  end

  # POST /short_forms
  # POST /short_forms.json
  def create
    @short_form = ShortForm.new(short_form_params)

    respond_to do |format|
      if @short_form.save
        format.html { redirect_to @short_form, notice: 'Short form was successfully created.' }
        format.json { render :show, status: :created, location: @short_form }
      else
        format.html { render :new }
        format.json { render json: @short_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /short_forms/1
  # PATCH/PUT /short_forms/1.json
  def update
    respond_to do |format|
      if @short_form.update(short_form_params)
        format.html { redirect_to @short_form, notice: 'Short form was successfully updated.' }
        format.json { render :show, status: :ok, location: @short_form }
      else
        format.html { render :edit }
        format.json { render json: @short_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_forms/1
  # DELETE /short_forms/1.json
  def destroy
    @short_form.destroy
    respond_to do |format|
      format.html { redirect_to short_forms_url, notice: 'Short form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_form
      @short_form = ShortForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_form_params
      params.require(:short_form).permit(:name, :phone, :parcel_street, :parcel_street2, :parcel_city, :parcel_zip, :parcel_county)
    end
end
