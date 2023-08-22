" Script auth token
let s:authToken = ""

" Print the version for the BitBurner plugin
function! burnedbits#Version(...)
    :echo "Version 0.0.0-alpha-1"
endfunction

" Set an auth token
function! burnedbits#AuthToken(...)
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
  let s:authToken = ""
  echo "Token has been cleared"
endfunction
