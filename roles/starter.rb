name "db"
description "DB Role"
run_list "recipe[starter]"
override_attributes({
  "starter_name" => "Sreedevi Vedula",
})
