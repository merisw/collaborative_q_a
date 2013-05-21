class QAndAsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  before_filter :find_q_and_a, :only => [:show, :edit, :update, :destroy]
  # GET /q_and_as
  # GET /q_and_as.json
  def index
    @q_and_as = QAndA.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @q_and_as }
    end
  end

  # GET /q_and_as/1
  # GET /q_and_as/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @q_and_a }
    end
  end

  # GET /q_and_as/new
  # GET /q_and_as/new.json
  def new
    @q_and_a = QAndA.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @q_and_a }
    end
  end

  # GET /q_and_as/1/edit
  def edit
  end

  # POST /q_and_as
  # POST /q_and_as.json
  def create
    @q_and_a = QAndA.new(params[:q_and_a])
    @q_and_a.users << current_user
    respond_to do |format|
      if @q_and_a.save
        format.html { redirect_to @q_and_a, notice: 'Q and a was successfully created.' }
        format.json { render json: @q_and_a, status: :created, location: @q_and_a }
      else
        format.html { render action: "new", alert: 'Q and a was not created.' }
        format.json { render json: @q_and_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /q_and_as/1
  # PUT /q_and_as/1.json
  def update
    @q_and_a.users << current_user
    respond_to do |format|

      if @q_and_a.update_attributes(params[:q_and_a])
        format.html { redirect_to @q_and_a, notice: 'Q and a was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit", alert: 'Q and a was not updated.' }
        format.json { render json: @q_and_a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /q_and_as/1
  # DELETE /q_and_as/1.json
  def destroy
    @q_and_a.destroy
    flash[:notice] = "Q and A has been deleted."
    redirect_to q_and_as_path
  end

  private
  def find_q_and_a
    @q_and_a = QAndA.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The Q and A you were looking for could not be found."
    redirect_to q_and_as_path
  end
end
