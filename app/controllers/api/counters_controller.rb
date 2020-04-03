module Api

class CountersController < ApplicationController
  before_action :set_counter, only: [:show, :update, :destroy]
  before_action :set_crawler, only: [:index]

  # GET /counters
  def index
    @counters = @crawler.counters

    render json: @counters
  end

  # GET /counters/1
  def show
    render json: @counter
  end

  # # POST /counters
  # def create
  #   @counter = Counter.new(counter_params)

  #   if @counter.save
  #     render json: @counter, status: :created, location: @counter
  #   else
  #     render json: @counter.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /counters/1
  # def update
  #   if @counter.update(counter_params)
  #     render json: @counter
  #   else
  #     render json: @counter.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /counters/1
  # def destroy
  #   @counter.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter
      @counter = Counter.find(params[:id])
    end

    def set_crawler
      @crawler = Crawler.find(params[:crawler_id])
    end
    # Only allow a trusted parameter "white list" through.
    def counter_params
      params.require(:counter).permit(:count, :crawler_id)
    end
end

end