function! g:WDeploy(currentFile)
    let script = "~/bin/deploy-" . g:ProjConfig['deploy.method'] . ".sh"
    exe "!" . script . " "
        \ . '"' . a:currentFile . '"' . " "
        \ . '"' . get(g:ProjConfig, 'deploy.server') . '"' . " "
        \ . '"' . get(g:ProjConfig, 'deploy.port') . '"' . " "
        \ . '"' . get(g:ProjConfig, 'deploy.remote') . '"' . " "
        \ . '"' . get(g:ProjConfig, 'deploy.local') . '"' . " "
        \ . '"' . get(g:ProjConfig, 'deploy.exclude') . '"' .  " "
endfunction
