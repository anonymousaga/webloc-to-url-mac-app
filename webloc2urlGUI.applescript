do shell script "rm -rf webloc_files && mkdir webloc_files"
tell application "Finder"
	set current_path to container of (path to me) as text
	set theWeblocs to (choose file with prompt "Please select a .webloc file" of type "webloc" default location (path to desktop) with multiple selections allowed)
	duplicate theWeblocs to current_path & "webloc_files"
end tell
do shell script "cd webloc_files && ./../webloc2url.sh"
set weblocOne to first alias of theWeblocs
set posixWebloc to POSIX path of weblocOne
tell application "Finder"
	set containerDir to POSIX path of (get (container of (weblocOne)) as text)
end tell
do shell script "cd webloc_files && mv -n *.url \"" & containerDir & "\"&& rm -rf ../webloc_files && filename=\"" & posixWebloc & "\" && open -R \"${filename%.*}.url\""
