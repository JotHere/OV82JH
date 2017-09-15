#!/usr/bin/powershell
# Apply fixes for GitHub Pages to a file
$filename = $args[0]

# Convert windows-1252 encoding (as with MSExWeb) to utf-8 encoding
#if ((file $filename | grep "UTF-8") -eq "") {
#tidy --wrap 0 --input-encoding win1252 --output-encoding utf8 $filename >$filename.tidy
#}

# Convert ‘{{’ to say ‘{ {’ (using https://en.wikipedia.org/wiki/Zero-width_space)
sed -i 's/{{/{​{/g' $filename