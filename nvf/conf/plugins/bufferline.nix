{
  config.vim = 
  {
    tabline.nvimBufferline.enable = true;    
  };


  config.vim.keymaps = 
  [
    {
      desc = "Cycle next buffer";
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<CR>";
    }   
    {
      desc = "Cycle previous buffer";
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<CR>";
    }   
    {
      desc = "Close current buffer";
      mode = "n";
      key = "<C-x>";
      action = "<cmd>Bdelete<CR>";
    }   

    # {
    #   desc = "";
    #   mode = [ "" ];
    #   key = "";
    #   action = "<CR>";
    # }   
  ];
}
