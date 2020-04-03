
[1mFrom:[0m /home/gavinsharkey/mnt/c/users/tanya/dev/flatiron/labs/dynamic-orm-lab-onl01-seng-ft-030220/lib/student.rb:6 :

     [1;34m1[0m: require_relative [31m[1;31m"[0m[31m../config/environment.rb[1;31m"[0m[31m[0m
     [1;34m2[0m: require [31m[1;31m'[0m[31mactive_support/inflector[1;31m'[0m[31m[0m
     [1;34m3[0m: require [31m[1;31m'[0m[31minteractive_record.rb[1;31m'[0m[31m[0m
     [1;34m4[0m: 
     [1;34m5[0m: [32mclass[0m [1;35;4mStudent[0m < [1;34;4mInteractiveRecord[0m
 =>  [1;34m6[0m:   binding.pry
     [1;34m7[0m:   [1;36mself[0m.column_names.each [32mdo[0m |column|
     [1;34m8[0m:     attr_accessor column.to_sym
     [1;34m9[0m:   [32mend[0m
    [1;34m10[0m: [32mend[0m

