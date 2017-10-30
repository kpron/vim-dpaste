" --------------------------------
"  Function(s)
" --------------------------------

function! GetVisual() range 
        let reg_save = getreg('"') 
        let regtype_save = getregtype('"') 
        let cb_save = &clipboard 
        set clipboard& 
        normal! ""gvy 
        let selection = getreg('"') 
        call setreg('"', reg_save, regtype_save) 
        let &clipboard = cb_save 
        return selection 
endfunction 


function! PostSnippet() range
    let a:content = GetVisual()
    let a:paste_url = get(g:, 'dpaste_url', "https://dpaste.de/api/")
    let resp = system("curl -F 'content=".a:content."' ".a:paste_url."")
    let s:uri = matchstr(resp, '"[a-z]*:\/\/[^ >,;]*"')
    echom s:uri
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! -range Dpaste call PostSnippet()
