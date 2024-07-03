class SpacesController < ApplicationController
  before_action :set_tenant
  before_action :set_space, only: %i[ show edit update destroy ]

  # GET /spaces
  def index
    @spaces = @tenant.spaces.all
  end

  # GET /spaces/1
  def show
  end

  # GET /spaces/new
  def new
    @space = Space.new(tenant: @tenant)
  end

  # GET /spaces/1/edit
  def edit
  end

  # POST /spaces
  def create
    @space = Space.new(space_params.merge(created_by: current_user, tenant: @tenant))

    if @space.save
      redirect_to [ @tenant, @space ], notice: "Space was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spaces/1
  def update
    if @space.update(space_params)
      redirect_to [ @tenant, @space ], notice: "Space was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /spaces/1
  def destroy
    @space.destroy!
    redirect_to tenant_spaces_url, notice: "Space was successfully destroyed.", status: :see_other
  end

  private
    def set_tenant
      @tenant = Tenant.find(params[:tenant_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = @tenant.spaces.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def space_params
      params.require(:space).permit(:name)
    end
end
