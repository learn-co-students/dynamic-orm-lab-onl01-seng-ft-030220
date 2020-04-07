
[1mFrom:[0m /home/mattkuras/code/labs/dynamic-orm-lab-onl01-seng-ft-030220/lib/interactive_record.rb:31 InteractiveRecord.column_names:

    [1;34m24[0m: [32mdef[0m [1;36mself[0m.[1;34mcolumn_names[0m
    [1;34m25[0m:     [1;34;4mDB[0m[[33m:conn[0m].results_as_hash = [1;36mtrue[0m 
    [1;34m26[0m: 
    [1;34m27[0m:     sql = [31m[1;31m"[0m[31mpragma table_info('#table_name}')[1;31m"[0m[31m[0m
    [1;34m28[0m: 
    [1;34m29[0m:     table_info = [1;34;4mDB[0m[[33m:conn[0m].execute(sql)
    [1;34m30[0m:     column_names = []
 => [1;34m31[0m:     binding.pry
    [1;34m32[0m:     table_info.each [32mdo[0m |row|
    [1;34m33[0m:         column_names << row [[31m[1;31m"[0m[31mname[1;31m"[0m[31m[0m]
    [1;34m34[0m:     [32mend[0m
    [1;34m35[0m:     column_names.compact 
    [1;34m36[0m: [32mend[0m

