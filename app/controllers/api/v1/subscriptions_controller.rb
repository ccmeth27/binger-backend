class Api::V1::SubscriptionsController < ApplicationController

    def index
        @subscriptions = Subscription.all
        if @subscriptions
        render json: {
            subscriptions: @subscriptions
        }
        else
        render json: {
            status: 500,
            errors: ['error']
        }
        end
    end

    def show
        subscriptions = Subscription.where(params[:user_id])
        render json: {
            subscriptions: subscriptions
        }
    end

    def create
        subscription = Subscription.new(
            user_id: params[:user_id],
            amazon: params[:amazon],
            disney: params[:disney],
            fx: params[:fx],
            hbo: params[:hbo],
            hulu: params[:hulu],
            netflix: params[:netflix],
            showtime: params[:showtime],
            starz: params[:starz],
            tbs: params[:tbs],
            tnt: params[:tnt],
            usa: params[:usa],
        )
        if subscription.save!
            render json: {
              status: :created,
              subscription: subscription
            }
          else 
            render json: {
              status: 500,
            }
          end
    end
           
end