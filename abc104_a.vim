abc104_a.vim
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
:delete r
:let r = @r
:if r < 1200
:put! = 'ABC'
:elseif r < 2800
:put! = 'ARC'
:join!
:else
:put! = 'AGC'
:endif
:join!
:write
:quit
#######################################