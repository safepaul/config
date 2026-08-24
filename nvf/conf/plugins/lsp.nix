{
  config.vim = 
  {
    lsp.enable = true;

    lsp.formatOnSave = true;

    ## Clang
    languages.clang.enable = true;
    languages.clang.lsp.enable = true;
    languages.clang.format.enable = true;
    languages.clang.format.type = "clang-format";
    # languages.clang.treesitter.enable = true;
  };


  config.vim.keymaps = 
  [
    # {
    #   desc = "";
    #   mode = [ "" ];
    #   key = "";
    #   action = "<CR>";
    # }   
  ];
}

