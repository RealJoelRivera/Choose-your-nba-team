class Api::V1::UsersController < ApplicationController

    def login
        @user = User.find_by({username: params[:username]})
        if @user && @user.authenticate(params[:password])
            render json: {token: encode_token({id: @user.id}), user: UserSerializer.new(@user)}
        else
            render json: {error: "Incorrect Username or Password"}
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @player = Player.find(params[:player_id])
        @user.players << @player
        render json: @user.players
    end

    def destroy
        @user = User.find(params[:id])
        @player = Player.find(params[:player_id])
        @user.players.delete(@player)
        render json: @user.players
    end

    def auth_update
        if logged_in?
            # update user info here with current_user
            render json: {message: "Success!"}
        else
            render json: {message: "Fail"}
        end
    end
end
