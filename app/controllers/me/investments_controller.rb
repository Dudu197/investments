class Me::InvestmentsController < ApplicationController
  before_action :set_me_investment, only: [:show, :edit, :update, :destroy]

  # GET /me/investments
  # GET /me/investments.json
  def index
    @me_investments = Me::Investment.all
  end

  # GET /me/investments/1
  # GET /me/investments/1.json
  def show
  end

  # GET /me/investments/new
  def new
    @me_investment = Me::Investment.new
  end

  # GET /me/investments/1/edit
  def edit
  end

  # POST /me/investments
  # POST /me/investments.json
  def create
    @me_investment = Me::Investment.new(me_investment_params)

    respond_to do |format|
      if @me_investment.save
        format.html { redirect_to @me_investment, notice: 'Investment was successfully created.' }
        format.json { render :show, status: :created, location: @me_investment }
      else
        format.html { render :new }
        format.json { render json: @me_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /me/investments/1
  # PATCH/PUT /me/investments/1.json
  def update
    respond_to do |format|
      if @me_investment.update(me_investment_params)
        format.html { redirect_to @me_investment, notice: 'Investment was successfully updated.' }
        format.json { render :show, status: :ok, location: @me_investment }
      else
        format.html { render :edit }
        format.json { render json: @me_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /me/investments/1
  # DELETE /me/investments/1.json
  def destroy
    @me_investment.destroy
    respond_to do |format|
      format.html { redirect_to me_investments_url, notice: 'Investment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_me_investment
      @me_investment = Me::Investment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def me_investment_params
      params.require(:me_investment).permit(:name, :description, :obsevation)
    end
end
