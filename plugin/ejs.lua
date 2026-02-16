vim.treesitter.language.register("embedded_template", "ejs")

vim.filetype.add({
  extension = {
    ejs = "ejs",
  },
})
