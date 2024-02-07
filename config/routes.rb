Rails.application.routes.draw do
  get("/" , { :controller => "dice", :action => "home"})

  get("dice/2/6", { :controller => "dice", :action => "twodsix"})

  get("dice/2/10", { :controller => "dice", :action => "twodten"})

  get("dice/1/20", {:controller => "dice", :action => "onedtwenty"})

  get("dice/5/4", {:controller => "dice", :action => "fivedfour"})

  get("dice/:param1/:param2", {:controller => "dice", :action => "random"})
end
