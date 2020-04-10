class SessionsController < ApplicationController

    def index
        redirect_to login_path
    end

    def new
    end

    def create
        if params[:name].present?
            session[:name] = params[:name]
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
    end
end
