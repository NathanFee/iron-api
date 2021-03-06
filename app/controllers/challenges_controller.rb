# frozen_string_literal: true

class ChallengesController < ProtectedController
  before_action :set_challenge, only: %i[update destroy]

  # GET /challenges
  def index
    @challenges = Challenge.all

    render json: @challenges
  end

  # GET /challenges/1
  def show
    render json: Challenge.find(params[:id])
  end

  # POST /challenges
  def create
    @challenge = current_user.challenges.build(challenge_params)

    if @challenge.save
      render json: @challenge, status: :created, location: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1
  def update
    if @challenge.update(challenge_params)
      render json: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_challenge
    @challenge = current_user.challenges.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def challenge_params
    params.require(:challenge).permit(:challenge_name, :description)
  end
end
