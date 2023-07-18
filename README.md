# Photo Organiser Script #
This script is a bash utility designed to help you rename and organize your photos based on their creation date.  It provides an easy way to rename multiple photo files in a specific directory and sort them chronologically. This can be useful for better organizing your photo collection or preparing them for further processing.

## Prerequisites ##

Before running this script, make sure you have the following prerequisites installed on your system:

  * __'bash'__: The script is written in bash, so you need a bash-compatible shell environment.
  
  * __'exiftool'__: This tool is used to extract the creation date of the photos. Make sure you have it installed and available in your system's PATH.

## How to Use ##

1. Download the Script: First, download the photo_organiser.sh script from this repository and place it in your desired location.
2. Adjust Configuration: Open the photo_organiser.sh script in a text editor and configure the following variables according to your requirements:

  * photos_directory: Set the path to the directory where your photos are located.
  * file_prefix: Set the prefix you want to add to the renamed files. Leave it empty if you don't want any prefix.

3. Make the Script Executable: Ensure the script has executable permissions. If it doesn't, you can set the permissions using the following command:
  `chmod +x photo_organiser.sh`
4. Run the Script: Open your terminal, navigate to the directory containing the script, and execute it with the following command:
  `./photo_renamer.sh`
   The script will automatically change to the photos_directory, process the photos, and rename them based on their creation date and the specified file_prefix.
5. Review the Output: The script will display the renaming process, showing the old and new names of each photo. Please review the output to ensure everything is renamed correctly.

## Important Notes ##

* The script uses __'exiftool'__ to extract the creation date of the photos. Ensure that your photo files have valid EXIF data with the creation date set. If the creation date is missing or incorrect, the renaming might not work as expected.
* Only photo files with extensions .jpg, .jpeg, and .png will be processed. Other files in the directory will be ignored.
* The script sorts the photos based on their creation date (oldest to newest) before renaming them. This ensures that your photos are named in chronological order.
* If you have multiple photos taken on the same date, the script will append a number to the file names to differentiate them (e.g., my_photo.jpg becomes 1_my_photo.jpg, 2_my_photo.jpg, and so on).

## Disclaimer ##

Always make sure to have a backup of your photo files before running any scripts that modify file names. While this script is designed to be safe and non-destructive, it's always a good practice to keep backups in case of unexpected issues.

## Contributing ##

If you find any issues with the script or want to suggest improvements, feel free to open an issue or submit a pull request on the GitHub repository.

## License ##

This project is licensed under the MIT License. Feel free to modify and distribute the script according to the terms of the license.




