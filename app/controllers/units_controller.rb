class UnitsController < ApplicationController
  # GET /units
  # GET /units.xml
  def index
    @units = Units.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.xml
  def show
    @units = Units.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/new
  # GET /units/new.xml
  def new
    @units = Units.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1/edit
  def edit
    @units = Units.find(params[:id])
  end

  # POST /units
  # POST /units.xml
  def create
    @units = Units.new(params[:units])

    respond_to do |format|
      if @units.save
        flash[:notice] = 'Units was successfully created.'
        format.html { redirect_to(@units) }
        format.xml  { render :xml => @units, :status => :created, :location => @units }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @units.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /units/1
  # PUT /units/1.xml
  def update
    @units = Units.find(params[:id])

    respond_to do |format|
      if @units.update_attributes(params[:units])
        flash[:notice] = 'Units was successfully updated.'
        format.html { redirect_to(@units) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @units.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1
  # DELETE /units/1.xml
  def destroy
    @units = Units.find(params[:id])
    @units.destroy

    respond_to do |format|
      format.html { redirect_to(units_url) }
      format.xml  { head :ok }
    end
  end
end
