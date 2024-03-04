//abc168_a.vim
################################
################################
xxxp:s/3/b/
:s/[0168]/p/
:s/[0-9]/h/
aonZZ
################################
:s/.*[24579]$/hon/
:s/.*[0168]$/pon/
:s/.*3$/bon/
ZZ
################################
:s/[0-9]*[24579]$/hon/
:s/[0-9]*[0168]$/pon/
:s/[0-9]*3$/bon/
:wq

################################
:let line = getline(1)
:let num = str2nr(line, 10)
:let lowest = num % 10
:if lowest == 3
  :call setline(1, 'bon')
:elseif lowest == 2 || lowest == 4 || lowest == 5 || lowest == 7 || lowest == 9
  :call setline(1, 'hon')
:else
  :call setline(1, 'pon')
:endif
:wq
################################
:let line = getline(1)
:let num = str2nr(line, 10)
:echo num
:let lowest = num % 10
:echo lowest
:let bon_list = [3]
:let hon_list = [2, 4, 5, 7, 9]
:echo match(bon_list, num)
:if match(bon_list, lowest) >= 0
  :call setline(1, 'bon')
:elseif match(hon_list, lowest) >= 0
  :call setline(1, 'hon')
:else
  :call setline(1, 'pon')
:endif
:wq

################################
