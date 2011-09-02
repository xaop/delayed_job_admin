class DelayedJobAdminController < ApplicationController

  before_filter :delayed_job_admin_authentication

  def index
    render :layout => DelayedJobAdmin.layout
  end
  
  def run_job_now
    if job = Delayed::Job.where("failed_at IS NULL").find_by_id(params[:job_id])
      job.run_at = Time.now
      job.save
    end
    redirect_to delayed_job_admin_path
  end
  
  def retry_job
    if job = Delayed::Job.where("failed_at IS NOT NULL").find_by_id(params[:job_id])
      job.run_at = Time.now
      job.failed_at = nil
      job.locked_at = nil
      job.locked_by = nil
      job.save
    end
    redirect_to delayed_job_admin_path
  end

end
