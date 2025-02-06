# Get all files named "*.docx.zip" in the current directory
Get-ChildItem -Path . -Filter "*.docx.zip" | ForEach-Object {
    # Construct the new name by removing the .zip extension
    $newName = $_.Name -replace '\.zip$', ''
    # Rename the file
    Rename-Item -Path $_.FullName -NewName $newName -Force
}