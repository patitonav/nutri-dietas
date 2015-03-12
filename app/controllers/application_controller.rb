class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception


	before_action :configure_devise_permitted_parameters, if: :devise_controller?

	protected

	def configure_devise_permitted_parameters
		registration_params = 	[:email, :password, :password_confirmation,:name,:last_name,:address,:city,:country,:phone,:cellphone,:social_security,:social_security_plan,:social_security_number,:marital_status,:birhtday,:profesion,:sex,:job_hs,:job_type,:weight_max,:weight_min,:weight_avg,:weight_now,:weight_exp,:objective,:family,:cooks,:buys,:allergies,:kosher,:vegetarian,:ovolacto,:lacto,:pork,:meat,:chicken,:fish,:celiac,:swallowing,:mastication,:nausea,:diarrhea,:vomits,:constipation,:anemia,:hypertension,:diabetes,:heart_problems,:overweight,:cholesterol,:bulimia,:anorexia,:cancer,:cancer_type,:illness_other,:smoker,:smoker_amount,:medication,:wrist_size,:height,:vitamins,:sport1,:sport1_frecuency,:sport2,:sport2_frecuency,:sport3,:sport3_frecuency,:menstruation,:how_meet,:comments,:intestinal_desiseases]

		if params[:action] == 'create'
			devise_parameter_sanitizer.for(:sign_up) {
			|u| u.permit(registration_params)
			}
		end
	end

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end
