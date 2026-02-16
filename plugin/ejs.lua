local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.ejs = {
  install_info = {
    url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
    files = { "src/parser.c" },
    branch = "master",
  },
  filetype = "ejs",
}
