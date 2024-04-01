##########################
:delete f
:let sf = split(@f)
:let a = sf[0]
:let b = sf[1]
:put! = (b-a+1)
:join!
:write
:quit
##########################
"adwC=@"-@a+1
ZZ
##########################
