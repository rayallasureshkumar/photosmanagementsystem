class SessionsController < ApplicationController
	before_filter :home_page, :except => ["logout"]
	def login
		
	end
	def login_authuntication
		@user = User.find_by_email(params[:email])
		if @user.present? and @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to user_path(:id => @user.id)
		else
			@errors = "invalid email/password"
			render "login"
		end
		
	end
	def logout
		session[:user_id]=nil
		redirect_to login_sessions_path
	end
end
