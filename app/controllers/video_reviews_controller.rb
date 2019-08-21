class VideoReviewsController < ApplicationController

  before_action :set_review, only:[:show, :edit, :update, :destroy]

  def index
    @video_reviews = VideoReview.all
  end

  def show
  end

  def edit
  end

  def new
    @video_review = VideoReview.new
  end

  def create
    @video_review = VideoReview.new(video_review_params)

    if @video_review.save
      redirect_to @video_review, success: 'Обзор успешно сохранён'
    else
      render :new
    end
  end

  def update
    if @video_review.update_attributes(video_review_params)
      redirect_to @video_review, info: 'Обзор успешно обновлён'
    else
      render :edit
    end
  end

  def destroy
    @video_review.destroy
    # redirect_to posts_path, success: 'post successfully deleted'
  end

  private

  def set_review
    @video_review = VideoReview.find(params[:id])
  end

  def video_review_params
    params.require(:video_review).permit(:title, :description, :youtube_link)
  end
end
