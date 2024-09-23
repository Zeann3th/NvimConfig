local ft = require "guard.filetype"

ft("lua"):fmt("lsp"):append "stylua"

ft("c,cpp,h,hpp"):fmt "lsp"

ft("go"):fmt("lsp"):append "gofumpt"

ft("python"):fmt "lsp"

ft("typescript,javascript,typescriptreact,javascriptreact"):fmt "lsp"

ft("json"):fmt "lsp"

return ft
