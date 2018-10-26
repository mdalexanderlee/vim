from subprocess import call
from os.path import expanduser, isfile
from os import getcwd, rename
from shutil import copyfile
import sys

def copy():
    print( "Creating a backup vimrc at " + backup )
    rename( vimrc, backup )
    print( "Copying from " + path + " to " + vimrc )
    copyfile( path, vimrc )

if sys.version_info[0] < 3:
    raise Exception("Must be using Python 3!")

path = expanduser( "~" ) + "/.vimrc"
vimrc = getcwd() + "/vimrc/.vimrc"
backup = vimrc + ".bak"

if isfile( path ):
    copy()
else:
    print( path + "couldn't be found!" )

