//abc089_a.vim
#########################################
#########################################
#########################################
#########################################
#########################################
C=@"/3
ZZ

C は Vim Normal モードからコマンドラインモードに移行するためのキーです。
@ はマクロを実行するためのプリフィックスです。
"/3 は register です。このレジスタには操作が記録されます。（つまり/3が可変部分）
 はコマンドラインモードからノーマルモードに移行するためのキーです。
ZZ は Vim を終了し、変更が保存されることを示しています。
#########################################
:delete f
:let n = split(@f)[0]
:put! = n/3
:join!
:write
:quit
#########################################