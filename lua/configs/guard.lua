local ft = require "guard.filetype"

ft("lua"):fmt("lsp"):append "stylua"

ft("c,cpp,h,hpp"):fmt "lsp"

ft("go"):fmt("lsp"):append "gofumpt"

ft("typescript,javascript,typescriptreact,javascriptreact"):fmt("lsp"):append "prettier"

ft("json"):fmt "lsp"

ft("typst"):fmt "lsp"

ft("php"):fmt "lsp"

return ft
