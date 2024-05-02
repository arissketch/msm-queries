Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors",{:controller => "directors", :action => "index"})
  get("/youngest",{:controller => "", :action => ""})
  get("/eldest",{:controller => "", :action => ""})
  get("/movies",{:controller => "", :action => ""})
  get("/actors",{:controller => "", :action => ""})




end
