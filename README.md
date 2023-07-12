# cli_auto-cut
Automate extraction of media using ffmpeg (multiple extractions with one command line)

**Create as much extracts as needed in a single command line**

## Usage

- bash montage.sh -i input_file -b t1a-t2a-... -e t1b-t2b-... -f extension -o name_of_output_file

*t1a... mean time in this format XX:XX:XX where first is hour, then min and then seconds*

## Alias 

If you want to use it as an everyday command, put it as an alias

Example in your .bashrc: alias extract="bash ~/path_to_script/montage.sh"
