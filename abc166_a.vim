##########################################
:let S = getline(1)
:execute '%d'
:if S == 'ABC'
  :let ans = 'ARC'
:else
  :let ans = 'ABC'
:endif
:put! = ans
:wq

##########################################
aR:s/RR/B
:s/RB/R
ZZ
##########################################
:s/BC/RD/
:s/RC/BC/
:s/D/C/
:wq

##########################################
:normal "Adw
:put! = @A == 'ABC' ? 'ARC' : 'ABC'
:wq
##########################################
:let S = getline(1)
:execute '%d'
:if S == 'ABC'
  :let ans = 'ARC'
:else
  :let ans = 'ABC'
:endif
:call setline(1, ans)
:wq

##########################################
