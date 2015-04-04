class DietsController < ApplicationController
  before_action :set_publication, only: [:show]
  before_action :authenticate_user!

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @diet = current_user.diet
    end

end