module ApplicationHelper
	def current_user
		if session[:user_id].present?
			@current_user = User.find_by_id(session[:user_id])
		else
			redirect_to login_sessions_path
		end
	end
	def home_page
		if session[:user_id].present?
			redirect_to user_path(:id => @current_user.id)
		end
	end
end
