
{
  config.vim = 
  {
    languages.markdown.enable = true;
    languages.markdown.extensions.render-markdown-nvim.enable = true;
  };


  config.vim.keymaps = 
  [
    # {
    #   desc = "";
    #   mode = [ "" ];
    #   key = "";
    #   action = "<CR>";
    # }   

    {
      desc = "Make selection bold";
      mode = "x";
      key = "<C-b>";
      action = "c**<C-r>\"**<ESC>";
    }   
  ];
}

