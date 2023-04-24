# shell tools and scripting

### define variables
>
> #### $foo=bar
>>
>> put if we write somthing like \$ foo = bar wit hspaces this mean foo is a program and = and are arguments
>>
> #### to print the variable
>>
>> we use the $ before the name of the variable like echo \$foo
>>
### define a string
>
> #### $echo "Hello"
>
> --> Hello
>
> #### $echo 'World'
>
> --> World
>>but there is a littel diffreent if we write ($echo "value is \$foo") will print -->value is bar
but if we write (\$echo 'value is \$foo') we print -->value is \$foo

### functions and 

> ##### example
>>
>> mcd(){
>> mkdir -p "\$1"
>> cd "\$1"
>>}
>>
>>> this function make directory with given name and change the current directory to it  
>
> and save this file in a file .sh 
>
> ###### here "\$1" means the first arguments in a function 
>
> ###### and "\$0" is the name of the script 
>
> ###### and "\$?" will get you the arror code from the previous command 
>
>>  example : 
>>if we excute the command \$echo "Hello" it will print Hello meaning no error occured then if we \$echo \$? it will print 0 
>> ###### notes : true always have 0 error code and false always have 1 error code  
>
> ###### and "\$_" the last argument from the previous command 
>
>>example : if we do \$mkdir test then \$cd $_ it will cd to test 
>         
> ######  do \$source mcd.sh to excute the file first then we could use the function 
> 
> ###### to use the function \$mcd test  


#### more comands 
> ##### the !!
>
>> if we do a permission denied command and then we write \$ sudo !! it will expand the previious command and excute it 
>
> ##### the || and && 
>
>> ###### || 
>>> will excute  the second command if the first command did not work 
>
>> ###### && 
>>> will print the second command if the first command worked 
>
> ##### the ;
>> to write more commands in the same line 
>>> example : $ false ; echo "this" it will print this

