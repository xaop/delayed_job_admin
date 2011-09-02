class DelayedJobAdminController < ApplicationController

  before_filter :delayed_job_admin_authentication

  def index
    render :layout => DelayedJobAdmin.layout
  end

end
