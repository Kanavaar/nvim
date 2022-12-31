vim.cmd([[
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
let delimitMate_quotes = "\" ' `"
]])
