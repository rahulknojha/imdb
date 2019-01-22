# frozen_string_literal: true

# Tv Controller
class TvsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_tv, only: %i[show edit update destroy]
  def index
    @tvs = Tv.all
  end

  def show
    @tv = Tv.find(params[:id])
  end

  def new
    @tv = Tv.new
  end

  def create
    @tv = Tv.new(tv_params)
    if @tv.save
      redirect_to tvs_path
    else
      render 'new'
    end
  end

  def tv_params
    params.require(:tv).permit(:title, :language, :episode, :duration)
  end

  def edit
    @tv = Tv.find(params[:id])
  end

  def destroy
    if @tv.destroy
      redirect_to tvs_path
    else
      redirect_to edit_tv_path, notice: 'Cannot delete the record!'
    end
  end

  def update
    if @tv.update(tv_params)
      redirect_to @tv
    else
      render 'edit'
    end
  end

  def find_tv
    @tv = Tv.find(params[:id])
  end

end