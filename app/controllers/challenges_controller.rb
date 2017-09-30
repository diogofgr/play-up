class ChallengesController < ApplicationController

  def new
    @challenge = Challenge.new
  end

  def create
    @user = current_user
    @challenge = Challenge.new(challenge_params)
    @challenge.author = @user
    @challenge.save

    redirect_to '/'
  end

  def update
    @challenge = Challenge.find(params[:id])
    if !@challenge.players.include?(current_user)
      @challenge.players << current_user
    else
      @challenge.is_done = true
      # TODO: give points to current_user.
      # flash new player score.
    end
    @challenge.save

    redirect_to '/'
  end


  private

  def challenge_params
    params.permit(:description, :id)
  end

end
