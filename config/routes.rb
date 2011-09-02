Rails.application.routes.draw do
  match 'delayed_job_admin' => 'delayed_job_admin#index', :as => 'delayed_job_admin'
  match 'delayed_job_admin/retry' => 'delayed_job_admin#retry_job', :as => 'retry_job_delayed_job_admin', :method => :put
  match 'delayed_job_admin/run_now' => 'delayed_job_admin#run_job_now', :as => 'run_job_now_delayed_job_admin', :method => :put
end
