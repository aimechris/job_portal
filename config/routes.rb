Rails.application.routes.draw do
  # User
  devise_for :user_accounts
  resources :user_types
  ###############
  # -----------------
  #------------------
  # Company Profile
  resources :business_stream
  resources :companies do
    resources :company_images
  end
  ############################

  # Job Seeker Profiles
  resources :seeker_profiles do
    resources :seeker_skill_sets
    resources :education_details
    resources :experience_details
  end
  resources :skill_sets
  #############################

  # Posting and looking Up Jobs
  resources :job_posts do
    resources :job_post_skill_sets
    resources :job_post_activities
  end
  resources :job_types
  #########################
  resources :job_locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
