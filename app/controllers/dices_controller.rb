class DicesController < ApplicationController
  # GET /dices
  # GET /dices.json
  def index
    @dices = Dice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dices }
    end
  end

  # GET /dices/1
  # GET /dices/1.json
  def show
    @dice = Dice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dice }
    end
  end

  # GET /dices/new
  # GET /dices/new.json
  def new
    @dice = Dice.newdic

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dice }
    end
  end

  # GET /dices/1/edit
  def edit
    @dice = Dice.find(params[:id])
  end

  # POST /dices
  # POST /dices.json
  def create
    @dice = Dice.new(params[:dice])

    respond_to do |format|
      if @dice.save
        format.html { redirect_to @dice, notice: 'Dice was successfully created.' }
        format.json { render json: @dice, status: :created, location: @dice }
      else
        format.html { render action: "new" }
        format.json { render json: @dice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dices/1
  # PUT /dices/1.json
  def update
    @dice = Dice.find(params[:id])

    respond_to do |format|
      if @dice.update_attributes(params[:dice])
        format.html { redirect_to @dice, notice: 'Dice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dices/1
  # DELETE /dices/1.json
  def destroy
    @dice = Dice.find(params[:id])
    @dice.destroy

    respond_to do |format|
      format.html { redirect_to dices_url }
      format.json { head :no_content }
    end
  end
end
