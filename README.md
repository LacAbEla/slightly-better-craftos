# Slightly Better CraftOS
I think the computers from ComputerCraft lack a few basic commands by default, forcing the player to use Lua for some basic functionality. <br/>
This datapack aims to make CraftOS feel more complete by adding such commands without altering the feel of the OS.

## Version
This pack targets CC:Tweaked 1.101.3 for Minecraft 1.18.2, though it should work for any 1.18 version and maybe even a few versions above or below.

## Usage/Installation
Add the `slightly-better-craftos.zip` file to the `datapacks` folder located inside the directory corresponding to the world whose computers you want to have a slightly better CraftOS preinstalled. <br/>
The singleplayer world directories are (by default) at `%AppData%\.minecraft\saves` on windows. The same instructions apply to servers. <br/>
Alternatively you can download the entire repository as a ZIP file and extract its contents (a single folder) directly to the `datapacks` folder mentioned above. <br/>
You can find [detailed instructions](https://minecraft.wiki/w/Tutorial:Installing_a_data_pack) in the Minecraft wiki. <br/>
Deleting this pack from a world won't damage it in any way, though programs may break if they depend on the changes this pack adds to CraftOS.

# Changes
## Modified programs
### `speaker`
Songs will now play at volume 2 instead of 1 by default (the range is 0.0 to 3.0). <br/>
The program will also allow to specify the playback volume by adding it at the end of the original syntax: `speaker play <file or url> [speaker] [volume]`.

## Added programs
### `free`
Shows the free and total space in the current or the specified directory. <br/>
Usage: `free [directory]`

### Turtle: `slot`
Allows seeing the contents of the turtle's inventory, checking the selected slot and changing it.
<br/>
Usages:
- `slot show` to show the selected slot and its contents
- `slot show <number>` to show the contents of the specified slot
- `slot select <number>` to select the specified slot
- `slot list` to show the contents of all slots

### Turtle: `dig`
Digs a block in front, above or below the turtle. If a length is specified it will dig a 1x1 tunnel of that length in the specified direction. <br/>
Usage: `dig <direction> [length]`