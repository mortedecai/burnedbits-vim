" Script auth token
let s:authToken = ""
let s:hasGo = -1

" Print the version for the BitBurner plugin
function! burnedbits#Version(...)
    :echo "Version 0.0.0-alpha-1"
endfunction

" Set an auth token
function! burnedbits#AuthToken(...)
  if !burnedbits#ValidateGoInstall()
      return
  endif
  if a:0 == 0
      if s:authToken == ""
          echo "Token has not been set"
      else
          echo "Token has been set"
      endif
      return
  endif
  if a:0 > 1
      echo "Exactly one argument required"
      return
  endif

  let s:authToken = a:1
  echo "Token has been set"
endfunction

" Clear an auth token
function! burnedbits#ClearAuthToken()
  if !burnedbits#ValidateGoInstall()
      return
  endif
  let s:authToken = ""
  echo "Token has been cleared"
endfunction

" Runs a check for go if it has not been done
" Prints an error message if it is not.
function! burnedbits#ValidateGoInstall()
  if s:hasGo == -1
      let s:hasGo = burnedbits#HasGoInstalled()
  endif
  if s:hasGo == 0
      echo "Unable to find Go; install go to continue"
  endif
  return s:hasGo
endfunction

" Checks if Go is installed.
" Returns 0 for false, 1 for true
function! burnedbits#HasGoInstalled()
  let s:goLocation = substitute(system('which go'), '\n\+$', '', '')
  if s:goLocation == "go not found"
        return 0
  endif
  return 1
endfunction


" Attemps to upload a file
function! burnedbits#UploadFile(...)
  let l:filePath = expand('<sfile>:p:h')
  let l:cmd = 'go run ' . l:filePath . '/burner.go'
  let s:output = substitute(system(l:cmd), '\n\+$', '', '')
  echo s:output ": " expand("%:p")
endfunction
