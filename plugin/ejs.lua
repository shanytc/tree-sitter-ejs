vim.treesitter.language.register("embedded_template", "ejs")

vim.filetype.add({
  extension = {
    ejs = "ejs",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ejs",
  callback = function(args)
    -- Add nvim-treesitter runtime queries to runtimepath so injected
    -- language highlights (html, js, css) can be found
    local ts_runtime = vim.fn.fnamemodify(
      vim.api.nvim_get_runtime_file("runtime/queries", false)[1] or "", ":h"
    )
    if ts_runtime ~= "" and not vim.o.runtimepath:find(ts_runtime, 1, true) then
      vim.opt.runtimepath:append(ts_runtime)
    end
    vim.treesitter.start(args.buf, "embedded_template")
  end,
})
