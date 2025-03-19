[1mdiff --git a/nvim/.config/nvim/lazy-lock.json b/nvim/.config/nvim/lazy-lock.json[m
[1mindex 9aa5b23..015a5d1 100644[m
[1m--- a/nvim/.config/nvim/lazy-lock.json[m
[1m+++ b/nvim/.config/nvim/lazy-lock.json[m
[36m@@ -22,10 +22,10 @@[m
   "nvim-cmp": { "branch": "main", "commit": "1e1900b0769324a9675ef85b38f99cca29e203b3" },[m
   "nvim-lspconfig": { "branch": "master", "commit": "185b2af444b27d6541c02d662b5b68190e5cf0c4" },[m
   "nvim-tree.lua": { "branch": "master", "commit": "c09ff35de503a41fa62465c6b4ae72d96e7a7ce4" },[m
[31m-  "nvim-treesitter": { "branch": "master", "commit": "835f5c11b8d4e1ded3576c69a019f717d3754c5a" },[m
[32m+[m[32m  "nvim-treesitter": { "branch": "master", "commit": "f09a2215b8fed4c2e86f2dd1912e14166958c06a" },[m
   "nvim-web-devicons": { "branch": "master", "commit": "4c3a5848ee0b09ecdea73adcd2a689190aeb728c" },[m
   "plenary.nvim": { "branch": "master", "commit": "857c5ac632080dba10aae49dba902ce3abf91b35" },[m
[31m-  "telescope.nvim": { "branch": "master", "commit": "a17d611a0e111836a1db5295f04945df407c5135" },[m
[32m+[m[32m  "telescope.nvim": { "branch": "master", "commit": "a4ed82509cecc56df1c7138920a1aeaf246c0ac5" },[m
   "todo-comments.nvim": { "branch": "main", "commit": "304a8d204ee787d2544d8bc23cd38d2f929e7cc5" },[m
   "ui": { "branch": "v3.0", "commit": "75233833d84b930bc37fecdcd7eb73b5714e92e4" },[m
   "volt": { "branch": "main", "commit": "21a2351697abfed26d4469b88d3ab124d55a1b3f" },[m
[1mdiff --git a/nvim/.config/nvim/lua/chadrc.lua b/nvim/.config/nvim/lua/chadrc.lua[m
[1mindex 31d7441..3ae9e61 100644[m
[1m--- a/nvim/.config/nvim/lua/chadrc.lua[m
[1m+++ b/nvim/.config/nvim/lua/chadrc.lua[m
[36m@@ -21,7 +21,7 @@[m [mM.nvdash = {[m
     '⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⠀⠘⣤⣭⣟⠛⠛⣉⣁⡜⠀⠀⠀⠀⠀⠛⠿⣿⣿⣿⣿',[m
     '⡿⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⡀⠀⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⣿',[m
     '                              ⠘',[m
[31m-    '            darkstar           ',[m
[32m+[m[32m    '           Dark Star           ',[m
     '                               ',[m
   },[m
 }[m
[1mdiff --git a/nvim/.config/nvim/lua/plugins/init.lua b/nvim/.config/nvim/lua/plugins/init.lua[m
[1mindex 4bc7999..eb04596 100644[m
[1m--- a/nvim/.config/nvim/lua/plugins/init.lua[m
[1m+++ b/nvim/.config/nvim/lua/plugins/init.lua[m
[36m@@ -30,6 +30,10 @@[m [mreturn {[m
           hide_gitignored = false,[m
           hide_dotfiles = false,[m
           hide_by_name = {[m
[32m+[m[32m            '.cache',[m
[32m+[m[32m            'node_modules',[m
[32m+[m[32m            '.local',[m
[32m+[m[32m            '.git',[m
             -- ".github",[m
             -- ".gitignore",[m
             -- "package-lock.json",[m
[1mdiff --git a/zsh/.zshrc b/zsh/.zshrc[m
[1mindex 5417af6..65df478 100644[m
[1m--- a/zsh/.zshrc[m
[1m+++ b/zsh/.zshrc[m
[36m@@ -23,6 +23,7 @@[m [mexport XDG_SESSION_TYPE=wayland[m
 [m
 [m
 # Misc aliases[m
[32m+[m[32malias spider="telnet dx.da0bcc.de 7300"[m
 alias c="clear"[m
 alias l="ls -Alsh --color"[m
 alias ff="c;fastfetch"[m
