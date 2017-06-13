module ItemsHelper

  def current_item
        @current_item ||= Item.find_by(id: params[:id])
  end
  

    
end
