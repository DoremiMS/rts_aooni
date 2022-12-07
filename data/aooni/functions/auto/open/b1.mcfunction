title @a[team=!aooni] title [{"text":"地下室の鍵を設置可能","color":"blue"}]
title @a[team=!aooni] subtitle [{"text":"チェストが補充されました"}]
function aooni:auto/set_chest
setblock -31 2 13 air replace
kill @e[type=item]