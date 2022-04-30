module RequestSpecHelper

  include Warden::Test::Helpers

  def self.included(base)
    base.before(:each) { Warden.test_mode! }
    base.after(:each) { Warden.test_reset! }
  end

  def sign_in(resource)
    login_as(resource, scope: warden_scope(resource))
  end

  def sign_out(resource)
    logout(warden_scope(resource))
  end

  private

  def warden_scope(resource)
    resource.class.name.underscore.to_sym
  end

end






module SigninHelper
  def create_user_and_log_in
    logged_user = create(:user)
    logged_user.confirm
    visit new_user_session_path
    fill_in :user_email, with: logged_user.email
    fill_in :user_password, with: logged_user.password
    click_on 'Log in'
  end
end