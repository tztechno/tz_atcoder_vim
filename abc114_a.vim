abc114_a.vim
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
:delete x
:let x = @x
:if (x-7)*(x-5)*(x-3) == 0
:put! = 'YES'
:else
:put! = 'NO'
:endif
:join!
:write
:quit
##########################################
:delete x
:let x = @x
:if (x-7)*(x-5)*(x-3) == 0
let @" = 'YES' 
else
let @" = 'NO'
endif
pZZ
##########################################
[python]
X=int(input())
if (X-7)*(X-5)*(X-3)==0:
  print('YES')
else:
  print('NO')
##########################################
