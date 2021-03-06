class SmsController < ApplicationController
  # GET /sms
  # GET /sms.json
  def index
    @sms = Sm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sms }
    end
  end

  # GET /sms/1
  # GET /sms/1.json
  def show
    @sm = Sm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sm }
    end
  end

  # GET /sms/new
  # GET /sms/new.json
  def new
    @sm = Sm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sm }
    end
  end

  # POST /sms
  # POST /sms.json
  def create
    @sm = Sm.new(params[:sm])

    respond_to do |format|
      if @sm.save
        SmsMailer.send_sms(@sm).deliver
        format.html { redirect_to @sm, notice: "SMS Sent successfully to #{@sm.number}." }
        format.json { render json: @sm, status: :created, location: @sm }
      else
        format.html { render action: "new" }
        format.json { render json: @sm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sms/1
  # DELETE /sms/1.json
  def destroy
    @sm = Sm.find(params[:id])
    @sm.destroy

    respond_to do |format|
      format.html { redirect_to sms_url }
      format.json { head :no_content }
    end
  end
end
