class BlocksController < InheritedResources::Base

  private

    def block_params
      params.require(:block).permit(:gauge_id, :name, :content)
    end
end

