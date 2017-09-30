class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @your_challenges = []
    @last_challenges = []

    Challenge.all.reverse[0..100].each do |challenge|
      if challenge.players.include?(current_user)
        @your_challenges << challenge
      else
        @last_challenges << challenge
      end
    end

    @your_challenges
    @last_challenges
  end
end
