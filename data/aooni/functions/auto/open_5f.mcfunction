title @a[team=!aooni] title [{"text":"5Fの鍵を設置可能","color":"blue"}]
title @a[team=!aooni] subtitle [{"text":"チェストが補充されました"}]
function aooni:auto/set_chest
setblock -21 21 -9 air replace
setblock -21 20 -9 air replace
kill @e[type=item]