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


  private

  def challenge_params
    params.permit(:description)
  end

end
