runBg
=====
This program provides an user-friendly way of send scripts/programs in the background and check the status of their processes. It is useful for work in a remote computer and close the terminal using nohup, and still have control of processes running in the background (kill them, know if they are finished).

For more information, see USAGE.

---

## INSTALL INSTRUCTIONS

For install, run:

`sudo sh INSTALL.sh`

If you want to install in a different folder:
`sudo sh INSTALL.sh <PATH_TO_INSTALL>`

Finally, add the folder to your PATH or make a soft link of the following files to your PATH:
`ls -s <INSTALL_PATH>/run <PATH>`
`ls -s <INSTALL_PATH>/j <PATH>`

You could remove all the files in the folder except `j` and `run`.

---

## USAGE

The program provides two tools: `run`, that run a script/program in the background and store it's informations, and `j`, that check the status of the program. 

For the arguments of each tool:
`run --help`
`j --help`

---

## DEPENDENCIES

These tools combine several UNIX tools for an user-friendly command line program. Some of them are the following includes:

* awk
* basename
* date
* nohup
* ps

---

### LICENSE

This program is distributed with GPLv3 license. See [LICENSE.md](https://github.com/magicDGS/runBg/blob/master/LICENSE.md) and [GNU licenses](http://www.gnu.org/licenses/) for more information.
