class KitaitoisController < ApplicationController
  # GET /kitaitois
  # GET /kitaitois.xml
  def index
   @kitaitois = kitaitoi.paginate :all, :page => params[:page], :order => 'Nom'

 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kitaitois }
    end
  end

  # GET /kitaitois/1
  # GET /kitaitois/1.xml
  def show
    @kitaitoi = Kitaitoi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kitaitoi }
    end
  end

  # GET /kitaitois/new
  # GET /kitaitois/new.xml
  def new
    @kitaitoi = Kitaitoi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kitaitoi }
    end
  end

  # GET /kitaitois/1/edit
  def edit
    @kitaitoi = Kitaitoi.find(params[:id])
  end

  # POST /kitaitois
  # POST /kitaitois.xml
  def create
    @kitaitoi = Kitaitoi.new(params[:kitaitoi])

    respond_to do |format|
      if @kitaitoi.save
        flash[:notice] = 'Kitaitoi was successfully created.'
        format.html { redirect_to(@kitaitoi) }
        format.xml  { render :xml => @kitaitoi, :status => :created, :location => @kitaitoi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kitaitoi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kitaitois/1
  # PUT /kitaitois/1.xml
  def update
    @kitaitoi = Kitaitoi.find(params[:id])

    respond_to do |format|
      if @kitaitoi.update_attributes(params[:kitaitoi])
        flash[:notice] = 'Kitaitoi was successfully updated.'
        format.html { redirect_to(@kitaitoi) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kitaitoi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kitaitois/1
  # DELETE /kitaitois/1.xml
  def destroy
    @kitaitoi = Kitaitoi.find(params[:id])
    @kitaitoi.destroy

    respond_to do |format|
      format.html { redirect_to(kitaitois_url) }
      format.xml  { head :ok }
    end
  end
end
