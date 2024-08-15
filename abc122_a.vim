abc122_a.vim
##########################################
##########################################
##########################################
##########################################
##########################################
!!tr ACGT TGCA
ZZ
##########################################
:s/A/x/g
:s/T/A/g
:s/x/T/g
:s/C/x/g
:s/G/C/g
:s/x/G/g
ZZ
##########################################
[AC]
:let x = getline('.')[col('.')-1]
:if x=='A'
:    normal! rT
:elseif x=='T'
:    normal! rA
:elseif x=='C'
:    normal! rG
:elseif x=='G'
:    normal! rC
:endif
:write
:quit
##########################################
[error]
:delete x
:let x = @x
:if x=='A'
:put! = 'T'
:elseif x=='T'
:put! = 'A'
:elseif x=='C'
:put! = 'G'
:elseif x=='G'
:put! = 'C'
:endif
:join!
:write
:quit
##########################################
[python]
b=str(input())
if b=='A':
    ans='T'
elif b=='T':
    ans='A'
elif b=='C':
    ans='G'
elif b=='G':
    ans='C'
print(ans)
##########################################
