# webloc-to-url-mac-app
A GUI Mac app that converts Mac-specific webloc files into equally-functional URL files that also work with windows. Its written in applescript, so unfortunately it only works on MacOS.

If this app is not working, make sure you have removed quarantine / Apple gatekeeper to allow it to run. Remove quarantine with this command (replace path to myapp to the path you have installed webloc to url at):
`
sudo xattr -r -d com.apple.quarantine /path/to/MyApp.app
`

Huge shout out to flagsoft/webloc2url for powering the main conversion of this app. The script inspired me to make an easier-to-use, GUI version of webloc to URL converter. Check out webloc2url here: https://github.com/flagsoft/webloc2url
