{
  # Fix for old version terminal emulators using the kitty protocol inputting double
  # enter, backspace... keys
  vim.luaConfigRC.footFix = ''
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function() 
        io.stdout:write("\027[>1u") 
      end,
    })
    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function() 
        io.stdout:write("\027[<1u") 
      end,
    })
  '';
}
