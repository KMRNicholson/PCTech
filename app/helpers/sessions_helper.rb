module SessionsHelper

	#logs user in.
  def log_in(user)
		session[:user_id] = user.id
  end

  #logs user out.
  def log_out
  	forget(current_user)
		session.delete(:user_id)
		@current_user = nil;
  end

  #returns a logged in user.
  def current_user
  	if(user_id = session[:user_id])
  		@current_user ||= User.find_by(id: user_id)
  	elsif (user_id = cookies.signed[:user_id])
  		user = User.find_by(id: user_id)
  		if user && user.authenticated?(cookies[:remember_token])
  			log_in user
  			@current_user = user
  		end
  	end
  end

  #checks to see if a user is logged in. returns true or false.
  def logged_in?
  	!current_user.nil?
  end

  #remembers a user in a persistent session.
  def remember(user)
  	user.remember
  	cookies.permanent.signed[:user_id] = user.id
  	cookies.permanent[:remember_token] = user.remember_token
  end

  #forgets a user cookies.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end
end
