# Get all .docx files in the current directory
Get-ChildItem -Path . -Filter *.docx | ForEach-Object {
    # Rename each file by appending .zip to the original name
    Rename-Item -Path $_.FullName -NewName ($_.Name + ".zip")
}