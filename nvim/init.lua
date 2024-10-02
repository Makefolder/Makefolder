require("pckr_bootstrap")
require("pckr_setup")

require("lsp_zero_config")
require("lsp_setup")
require("cmp_setup")

require("core.options")
require("core.keymaps")
require("core.colorscheme")
require("treesitter")

require("gitsigns").setup()
require("autoclose").setup()

-- Only for now I comment this
-- because it formats my C files
-- and I don't know how to disable it
require("conform_config")
