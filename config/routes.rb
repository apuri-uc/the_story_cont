Rails.application.routes.draw do
  # Routes for the Goal resource:

  # CREATE
  post("/insert_goal", { :controller => "goals", :action => "create" })
          
  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  
  get("/goals/:path_id", { :controller => "goals", :action => "show" })
  
  # UPDATE
  
  post("/modify_goal/:path_id", { :controller => "goals", :action => "update" })
  
  # DELETE
  get("/delete_goal/:path_id", { :controller => "goals", :action => "destroy" })

  #------------------------------

  # Routes for the Entry resource:

  # CREATE
  post("/insert_entry", { :controller => "entries", :action => "create" })
          
  # READ
  get("/entries", { :controller => "entries", :action => "index" })
  
  get("/entries/:path_id", { :controller => "entries", :action => "show" })
  
  # UPDATE
  
  post("/modify_entry/:path_id", { :controller => "entries", :action => "update" })
  
  # DELETE
  get("/delete_entry/:path_id", { :controller => "entries", :action => "destroy" })

  #------------------------------

  # Routes for the Day resource:

  # CREATE
  post("/insert_day", { :controller => "days", :action => "create" })
          
  # READ
  get("/days", { :controller => "days", :action => "index" })
  
  get("/days/:path_id", { :controller => "days", :action => "show" })
  
  # UPDATE
  
  post("/modify_day/:path_id", { :controller => "days", :action => "update" })
  
  # DELETE
  get("/delete_day/:path_id", { :controller => "days", :action => "destroy" })

  #------------------------------

  # Routes for the Week resource:

  # CREATE
  post("/insert_week", { :controller => "weeks", :action => "create" })
          
  # READ
  get("/weeks", { :controller => "weeks", :action => "index" })
  
  get("/weeks/:path_id", { :controller => "weeks", :action => "show" })
  
  # UPDATE
  
  post("/modify_week/:path_id", { :controller => "weeks", :action => "update" })
  
  # DELETE
  get("/delete_week/:path_id", { :controller => "weeks", :action => "destroy" })

  #------------------------------

  # Routes for the Reflection question resource:

  # CREATE
  post("/insert_reflection_question", { :controller => "reflection_questions", :action => "create" })
          
  # READ
  get("/reflection_questions", { :controller => "reflection_questions", :action => "index" })
  
  get("/reflection_questions/:path_id", { :controller => "reflection_questions", :action => "show" })
  
  # UPDATE
  
  post("/modify_reflection_question/:path_id", { :controller => "reflection_questions", :action => "update" })
  
  # DELETE
  get("/delete_reflection_question/:path_id", { :controller => "reflection_questions", :action => "destroy" })

  #------------------------------

  # Routes for the Reflection answer resource:

  # CREATE
  post("/insert_reflection_answer", { :controller => "reflection_answers", :action => "create" })
          
  # READ
  get("/reflection_answers", { :controller => "reflection_answers", :action => "index" })
  
  get("/reflection_answers/:path_id", { :controller => "reflection_answers", :action => "show" })
  
  # UPDATE
  
  post("/modify_reflection_answer/:path_id", { :controller => "reflection_answers", :action => "update" })
  
  # DELETE
  get("/delete_reflection_answer/:path_id", { :controller => "reflection_answers", :action => "destroy" })

  #------------------------------

  devise_for :users

  root to: "home#index"
  
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
