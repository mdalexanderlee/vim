from os.path import expanduser, isfile
from os import getcwd, rename
from shutil import copyfile
import sys

def copy():
    print( "Creating a backup vimrc at " + backup )
    rename( path, backup )
    print( "Copying from " + vimrc + " to " + path )
    copyfile( vimrc, path )

if sys.version_info[0] < 3:
    raise Exception("Must be using Python 3!")

path = expanduser( "~" ) + "/.vimrc"
backup = path + ".bak"
vimrc = getcwd() + "/vimrc/.vimrc"
if isfile( path ):
    answer = input( "Existing vimrc found at: " + path + ". Do you want to replace it completely?" ).lower().strip()
    if answer == "n" or answer == "no":
        print( "Okay, quitting now!", flush=True )
        quit()
copy()

