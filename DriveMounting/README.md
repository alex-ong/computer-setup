Fake drive syntax: `fake-drive (add | rm) LETTER [--pre]`
Change the `base` variable in the batch file if required to the mounting folder's parent directory

These make folders to mount fake drives to, as well as mount them.
Read the code carefully before executing each one.

Basic order: 

1) `mk_D_drive`
2) `mount-fake D Drive.reg`
3) Restart

You can use `remove-D Drive.reg` to undo your change.