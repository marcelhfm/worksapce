local keymap = vim.keymap

keymap.set("n", "<leader>r", ":MagmaEvaluateOperator<CR>", { expr = true, noremap = true })
keymap.set("v", "<leader>r", ":<C-u>MagmaEvaluateVisual<CR>", { noremap = true })
keymap.set("n", "<leader>rr", ":MagmaEvaluateLine<CR>", { noremap = true })
keymap.set("n", "<leader>rc", ":MagmaEvaluateCell<CR>", { noremap = true })
keymap.set("n", "<leader>rd", ":MagmaDelete<CR>", { noremap = true })
keymap.set("n", "<leader>ro", ":MagmaShowOutput<CR>", { noremap = true })
