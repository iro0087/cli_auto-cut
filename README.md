# cli_auto-cut
Automate extraction of media using ffmpeg (multiple extractions with one command line)

**Create as much extracts as needed in a single command line**

## Requirements

ffmpeg

## Usage

- bash montage.sh -i input_file -b **t1a**-**t2a**-... -e **t1b**-**t2b**-... -f extension -o name_of_output_file

*t1a... mean time in this format XX:XX:XX where first is hour, then min and then seconds*

So for 2 extracts we got **t1a** and **t1b**, the first **interval** time and **t2a** and **t2b** are for the second one. You can do this for x extracts.

## Example with 3 extracts

![mont](https://github.com/iro0087/cli_auto-cut/assets/114911243/312f40f9-1ebf-46bb-a8a9-162dc4a7616b)



