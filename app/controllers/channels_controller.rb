class ChannelsController < ApplicationController
  before_action :set_space, only: %i[index new create ]
  before_action :set_channel_and_space, only: %i[ edit update ]
  before_action :set_channel, only: %i[ show destroy ]

  # GET /channels
  def index
    @channels = @space.channels.all
  end

  # GET /channels/1
  def show
  end

  # GET /channels/new
  def new
    @channel_groups = @space.channel_groups.all
    @channel = @space.channels.build
  end

  # GET /channels/1/edit
  def edit
  end

  # POST /channels
  def create
    @channel = Channel.new(channel_params)
    # todo validate that I should have acccess to this channel group (and space)

    if @channel.save
      redirect_to @channel, notice: "Channel was successfully created."
    else
      @channel_groups = @space.channel_groups.all

      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /channels/1
  def update
    if @channel.update(channel_params)
      redirect_to @channel, notice: "Channel was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /channels/1
  def destroy
    @channel.destroy!
    redirect_to space_channels_url(@channel.channel_group.space), notice: "Channel was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = Space.find(params[:space_id])
    end

    def set_channel_and_space
      set_space
      @channel = @space.channels.find(params[:id])
    end

    def set_channel
      @channel = Channel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def channel_params
      # TODO: this will allow a channel to move to a different channel group - that seems reasonable?
      params.require(:channel).permit(:name, :channel_group_id)
    end
end
