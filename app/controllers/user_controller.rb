class UserController < ApplicationController

    def add_user
        @user = User.new(user_params)
        if @user.save!
            render json: @user.as_json(only:[:full_name, :id, :email, :gender, :dob, :nick_name] ,status: 200)
        end
    end
    def all_user
        @user =  User.where(is_deleted: false)
        render json: @user.as_json(only:[:full_name, :id, :email, :gender, :dob, :nick_name]),status: 200
    end

    def to_show_user
        @user =  User.find(params[:id])
        if @user.present?
            render json: @user.as_json(only:[:full_name, :id, :email, :gender, :dob, :nick_name]),status: 200
        end
    end

    def update_user
        @user =  User.find(params[:id])
        if @user.present?
        @user.update(user_params)
        render json: @user.as_json(only:[:full_name, :id, :email, :gender, :dob, :nick_name]),status: 200
        end

    end

    def delete_user
        @user = User.find(params[:id])
        if @user.present?
            @user.update(is_deleted: true)
        end
    end

   private
    def user_params 
        params.permit(:full_name,:email,:nick_name,:dob, :gender)
    end
end
