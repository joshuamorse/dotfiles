function! GrepInNewTabs()
  let wordToFind = input('Search term: ')
  if !empty(wordToFind)
    execute "tabnew grep_" . wordToFind
    execute "r! grep -r " . wordToFind . " ."
  endif
endfunction!

map ,gin :call GrepInNewTabs()<CR>
