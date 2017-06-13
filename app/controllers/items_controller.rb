class ItemsController < ApplicationController


  def create
     #@user = User.find_by(params[:session])
    @user = current_user
    @item = Item.new(item_params)
    @item.xemail = @user.email
    @item.email = @item.xemail
    @item.lbidderemail = @item.xemail
    @item.xprice = @item.baseprice
    @item.cbiddingprice = @item.xprice
    @item.dprice = @item.cbiddingprice
    if @item.save
      redirect_to items_myproducts_path 
    else 
      render 'new'
     # @item.productname = "No Products
    end
  end
  
  def index
    @items = Item.paginate(page: params[:page])
     @user = current_user
  end
  
  def myproducts
    @items = Item.paginate(page: params[:page])
     @user = current_user
  end
  
  def show
    @item = Item.find(params[:id])
     @item.time1 = Time.now.to_i 
    @item.time1 
    Time.now  
    @item.time2 = @item.created_at.to_i 
    @item.timediff = (@item.time1-@item.time2) 
  end
  
 
  def new
     @item = Item.new
     @user = User.all
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  

  
  def update
    @item = Item.find(params[:id])
    @item.cprice = @item.cbiddingprice
    @item.lbidderemail = current_user.email
    if @item.update_attributes(item_params)
      if  @item.dprice > @item.cbiddingprice
        @item.cbiddingprice = @item.dprice
        @item.save
        flash[:success] = "You have successfully placed your bid"
        redirect_to items_path
      else
      @item.dprice = @item.cprice
      
      flash.now[:danger] = "Bid more than current biddingprice"
      render 'edit'
      end
    else
        render 'edit'
    end
  end
  
  def item_params
      params.require(:item).permit(:productname, :baseprice,
                                   :cdays , :chours, :cminutes, :category, :cbiddingprice, :dprice )
  end

end
