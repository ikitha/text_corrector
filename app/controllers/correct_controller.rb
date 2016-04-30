class CorrectController < ApplicationController

  def home
  end

  def correct
    @text = text_params[:text].gsub(/\s+/, ' ')
    respond_to do |format|
      format.json { render json: {text: @text}, status: :ok }
    end
  end

   private
    # white list params
    def text_params
      params.permit(:text)
    end
end
