require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = false;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = false;
    ultisnips = false;
  };
}
vim.cmd('iunmap <CR>')
vimp.inoremap({'silent', 'expr' }, '<CR>', "compe#confirm(lexima#expand('<LT>CR>', 'i'))")
vimp.inoremap({'silent', 'expr' }, '<C-n>', "compe#complete()")

