{


  config.vim = 
  {
    filetree.neo-tree.enable = true;
  };

  config.vim.keymaps = 
  [
    {
      desc = "Toggle Neotree";
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }   
  ];

  config.vim.autocmds = [
    {
      event = [ "BufEnter" ];
      command = "lua if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == 'neo-tree' then vim.cmd('quit') end";
    }
  ];

}
