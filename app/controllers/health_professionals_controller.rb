class HealthProfessionalsController < ApplicationController
  # GET /health_professionals
  # GET /health_professionals.json
  def index
    @health_professionals = HealthProfessional.all
    @hash = Gmaps4rails.build_markers(@health_professionals) do |professional, marker|
      marker.lat professional.latitude
      marker.lng professional.longitude
      marker.infowindow "#{professional.firstname} #{professional.lastname}"
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @health_professionals }
    end
  end

  # GET /health_professionals/new
  # GET /health_professionals/new.json
  def new
    @health_professional = HealthProfessional.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @health_professional }
    end
  end

  # GET /health_professionals/1/edit
  def edit
    @health_professional = HealthProfessional.find(params[:id])
  end

  # POST /health_professionals
  # POST /health_professionals.json
  def create
    @health_professional = HealthProfessional.new(params[:health_professional])

    respond_to do |format|
      if @health_professional.save
        format.html { redirect_to health_professionals_path}
        format.json { render json: @health_professional, status: :created, location: @health_professional }
      else
        format.html { render action: "new" }
        format.json { render json: @health_professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /health_professionals/1
  # PUT /health_professionals/1.json
  def update
    @health_professional = HealthProfessional.find(params[:id])

    respond_to do |format|
      if @health_professional.update_attributes(params[:health_professional])
        format.html { redirect_to @health_professional, notice: 'Health professional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @health_professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_professionals/1
  # DELETE /health_professionals/1.json
  def destroy
    @health_professional = HealthProfessional.find(params[:id])
    @health_professional.destroy

    respond_to do |format|
      format.html { redirect_to health_professionals_url }
      format.json { head :no_content }
    end
  end
end
