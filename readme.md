### **pokemon sprites winfetch config**

This winfetch config will print pokemon sprites from the two attached folders to Windows Powershell/Terminal.

Heavily inspired by PhoneyBadger's pokemon-colorscripts. Check out their repo as well.
> https://gitlab.com/phoneybadger/pokemon-colorscripts

*All the pokemon designs, names, branding etc. are trademarks of The Pokémon Company*
*The box art sprites were taken from the PokéSprite database.*

--------------------

#### Winfetch can be found here: 

> https://github.com/lptstr/winfetch

or using a package manager like Scoop: 

> `scoop install winfetch`

--------------------

#### Installation

1. Paste the contents to your winfetch directory, e.g. when using scoop to:

> `C:\Users\YourUsername\scoop\apps\winfetch\current`

If you want to keep your current config other than the sprite loader, you can paste the part of the config that defines the logo (ln. 445-464).
This config assumes you're on Windows 11, if you aren't, paste the part of the config to your operating system (from ln. 429).

*There's a chance winfetch will print a shiny, which is set to 1/128 by default.*
