class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
    end
  end

  # GET /supplier/:supplier_id/products/:id
  # GET /products/1.json
  def show
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product }
    end
  end

  # GET supplier/:supplier_id/products/new
  # GET /products/new.json
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.build(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @supplier, :notice => 'Product was successfully created.' }
        format.json { render :json => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @supplier, :notice => 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to @supplier }
      format.json { head :no_content }
    end
  end
end
