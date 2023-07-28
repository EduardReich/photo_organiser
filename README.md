# Photo Organizer Script #
This script is a bash utility designed to help you rename and organize your photos based on their creation date.  It provides an easy way to rename multiple photo files in a specific directory and sort them chronologically. This can be useful for better organizing your photo collection or preparing them for further processing.

## Prerequisites ##

Before running this script, make sure you have the following prerequisites installed on your system:

  * __'bash'__: The script is written in bash, so you need a bash-compatible shell environment.

  * __'exiftool'__: This tool is used to extract the creation date of the photos. Make sure you have it installed and available in your system's PATH.

## How to Use ##

1. Clone the Repository
    First, clone this repository to your local machine using the following command:

    `git clone https://github.com/EduardReich/photo_organiser.git`

2. Makefile

    Additionally, a Makefile is provided to facilitate the installation and uninstallation of the script.

    To install the script system-wide, use the following command: `make install`

    By default, the script will be copied to /usr/local/bin. You can modify the DESTINATION variable in the Makefile if you want to install it in a different location.

3. Run the Script: Open your terminal, navigate to the directory containing the script, and execute it with the following command:
  `sortPhotos.sh /path/to/photos_directory file_prefix`
   Replace /path/to/photos_directory with the actual directory where your photos are located and file_prefix with the desired prefix you want to use for the renamed files.
   The script will automatically change to the photos_directory, process the photos, and rename them based on their creation date and the specified file_prefix.

   Example:

   `sortPhotos.sh /home/user/photos ConcertAlbatros`

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




