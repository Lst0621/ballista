#!/bin/bash
#compare fish conf

diff ~/.config/fish/config.fish config.fish
diff -r functions/ ~/.config/fish/functions/
