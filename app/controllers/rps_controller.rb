class RpsController < ApplicationController
  before_action :set_rp, only: [:index, :throw]

  # GET /rps
  def index
  end

  # POST 
  def throw
    formParms = params[:throw]
    serverThrow = @rp.get_random_item_key()
    userThrow = formParms[:userThrow]
    res =  @rp.win_lose(userThrow,serverThrow)

    render :action => "throw", :locals => {:result => res, :userThrow => userThrow, :serverThrow => serverThrow}
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rp
      @rp = Rp.new()
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rp_params
      params.require(:throw).permit(:userThrow)
   
    end
end
