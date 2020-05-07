class UsersController < ApplicationController
    def search
        user = User.new(params_user_search)
        @users = user.search
    end

    private

    def params_user_search
        params.permit(:search_name,:search_age)
    end
end