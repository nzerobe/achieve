module ContacsHelper
  def current_user
    @current_user ||= Contact.find_by(id: contact[:user_id])
  end
  def logged_in?
    !current_user.nil?
  end
end
