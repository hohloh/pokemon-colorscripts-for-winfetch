# ===== WINFETCH CONFIGURATION =====

#$image = "~/.config/winfetch/knight.png"
#$noimage = $true

# Display image using ASCII characters
# $ascii = $true

# Set the version of Windows to derive the logo from.
# $logo = "Windows 11"

# Specify width for image/logo
# $imgwidth = 40

# Specify minimum alpha value for image pixels to be visible
# $alphathreshold = 50

# Custom ASCII Art
# This should be an array of strings, with positive
# height and width equal to $imgwidth defined above.
$CustomAscii = @(
    # Random escape code sprites from .txt files
    # Define the path to the folder containing the text files
    $FolderPath = "$PSScriptRoot\regular"
    # Define the path to the SHINY folder
    $ShinyPath = "$PSScriptRoot\shiny"
    # Generate a random number between 1 and 128
    $RandomNumber = Get-Random -Minimum 1 -Maximum 129
    # Select the SHINY folder if the random number is 1
    if ($RandomNumber -eq 1) {
    $FolderPath = $ShinyPath
    }
    # Get a list of all text files in the folder
    $TextFiles = Get-ChildItem $FolderPath -Filter *.txt
    # Select a random text file from the list
    $RandomFile = $TextFiles | Get-Random
    # Load the contents of the random text file into a variable
    $Text = Get-Content $RandomFile.FullName
    # Display the contents of the random text file
    Write-Output $Text
    )

# Make the logo blink
# $blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
# function info_custom_time {
#     return @{
#         title = "Time"
#         content = (Get-Date)
#     }
# }

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# $cpustyle = 'bar'
# $memorystyle = 'textbar'
# $diskstyle = 'bartext'
# $batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.

@(
    "title"
    "dashes"
    "os"
    #"computer"
    "kernel"
    "motherboard"
    # "custom_time"  # use custom info line
    "uptime"
    # "ps_pkgs"  # takes some time
    "pkgs"
    "pwsh"
    #"resolution"
    "terminal"
    # "theme"
    "cpu"
    "gpu"
    # "cpu_usage"  # takes some time
    "memory"
    #"disk"
    # "battery"
    #"locale"
    #"weather"
    #"local_ip"
    #"public_ip"
    "blank"
    "colorbar"
)
