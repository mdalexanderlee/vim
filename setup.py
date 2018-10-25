from subprocess import call
from os.path import expanduser, isfile
from os import getcwd
from shutil import copyfile

path = expanduser( "~" ) + "/.vimrc"
if isfile( path ):
    answer = input( "Existing vimrc found at: " + path + ". Do you want to replace it completely?" ).lower()
    if answer is "n" or answer is "no":
        quit()
copyfile( getcwd() + "/vimrc/.vimrc", path)
