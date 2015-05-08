class PagesController < ApplicationController
  def index
    nums = (1..65536).to_a
    @chars = Kaminari.paginate_array(nums).page(params[:page]).per(16)
  end
end
