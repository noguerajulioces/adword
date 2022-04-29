class KeywordBadgesController < ApplicationController
  before_action :set_keyword_badge, only: %i[ show edit update destroy ]

  # GET /keyword_badges or /keyword_badges.json
  def index
    @keyword_badges = KeywordBadge.all
  end

  # GET /keyword_badges/1 or /keyword_badges/1.json
  def show
  end

  # GET /keyword_badges/new
  def new
    @keyword_badge = KeywordBadge.new
  end

  # GET /keyword_badges/1/edit
  def edit
  end

  # POST /keyword_badges or /keyword_badges.json
  def create
    @keyword_badge = KeywordBadge.new(keyword_badge_params)

    respond_to do |format|
      if @keyword_badge.save
        format.html { redirect_to keyword_badge_url(@keyword_badge), notice: "Keyword badge was successfully created." }
        format.json { render :show, status: :created, location: @keyword_badge }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @keyword_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keyword_badges/1 or /keyword_badges/1.json
  def update
    respond_to do |format|
      if @keyword_badge.update(keyword_badge_params)
        format.html { redirect_to keyword_badge_url(@keyword_badge), notice: "Keyword badge was successfully updated." }
        format.json { render :show, status: :ok, location: @keyword_badge }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @keyword_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyword_badges/1 or /keyword_badges/1.json
  def destroy
    @keyword_badge.destroy

    respond_to do |format|
      format.html { redirect_to keyword_badges_url, notice: "Keyword badge was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword_badge
      @keyword_badge = KeywordBadge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keyword_badge_params
      params.require(:keyword_badge).permit(:user_id, :keywords)
    end
end
