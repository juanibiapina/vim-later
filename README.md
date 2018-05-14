# vim-later

Save file locations for later usage.

## Usage

This plugins provides some plug mappings. To use them, map to your favorite
shortcut style, for instance:

```vimscript
nmap <Leader>ma <Plug>LaterAdd
nmap <Leader>mc <Plug>LaterClear
nmap <Leader>mq <Plug>LaterLoadQuickfix
```

- `LaterAdd`: Adds the current file location to the list
- `LaterClear`: Clears the location list
- `LaterLoadQuickfix`: Loads the location list into the quickfix

All locations are saved in a `.later` file in the current directory, which
allows you to keep per project lists. You might want to add this file to your
global gitignore.
