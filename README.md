# Slightly Better CraftOS
Small additions to CraftOS to make it more functional.

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
Songs will play at volume 2 instead of 1 by default (the range is 0.0 to 3.0). <br/>
The program will now also allow to specify the playback volume using this syntax: `speaker play <file or url> [speaker] [volume]`.

## Added programs
### `free`
Shows the free and total space in the current or the specified directory. <br/>
Usage: `free [directory]`