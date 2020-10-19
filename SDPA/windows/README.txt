README.txt for SDPA Windows Binary
Copyright (C) 2004-2011 SDPA Project
http://sdpa.sourceforge.net/

==INDEX==
1. Usage
2. License
3. Compile from source
========

Note: This Matlab files in this file are for "32bit" Windows.
      The Matlab files for "64bit" Windows may be able to be compiled
      by "3. Compile from source".

== 1. Usage ==
[1] To use from command line, execute command prompt and
    move to this directory. Then
    $ sdpa
    will display help message.
    An example can be solved by
    $ sdpa example1.dat-s example1.result
[2] To use from Matlab environment, add this directory
    to Matlab path. Then follow the SDPA-M manual
    https://sourceforge.net/projects/sdpa/files/sdpa-m/sdpamManual.pdf
    An example can be solved by
    >>> [mDIM,nBLOCK,bLOCKsTRUCT,c,F]=read_data('example1.dat-s');
    >>> [objVal,x,X,Y,INFO]=sdpam(mDIM,nBLOCK,bLOCKsTRUCT,c,F);
    Each command is briefly introduced in CommandList.txt.

Note:
   SDPA-sparse format files are usually prepared in Unix environments.
   To convert Unix-type newline files to Windows-type newline files,
   use the following command in the command prompt.
   $ more < example1.dat-s > example1.windows.dat-s
   If the file is large and you have Linux or Cygwin environments,
   $ perl -p -e 's/\n/\r\n/' example1.dat-s > example1.windows.dat-s
   may be much faster.
   Then the Windows-type newline file 'example1.windows.dat-s' will be
   available.

== 2. License ==

This binary is distributed under GNU General Public License v2.
More details of GPLv2 can be found in the file COPYING of this directory.

The binary files in this package contain the binary generated 
from following packages.
The source file of each package is available at the web page
of each package.

[1] SDPA 
http://sdpa.sourceforge.net/
SDPA is distributed under  GNU General Public License v2.

[2] pthreads-win32
http://sourceware.org/pthreads-win32/
pthreads-win32 is distributed under  GNU Lesser General Public License.

[3] OpenBLAS
https://github.com/xianyi/OpenBLAS
OpenBLAS is an open source code based on GotoBLAS 
and supported by ICSAS.
Copyright (c) 2011, Lab of Parallel Software and Computational Science,ICSAS

[4] MinGW
http://www.mingw.org/
MinGW is distributed under  GNU General Public License v2.
(This notice is from the web page of MinGW)
This library is distributed in the hope that it will be useful,
but WITHOUT WARRANTY OF ANY KIND;
without even the implied warranties of MERCHANTABILITY
or of FITNESS FOR A PARTICULAR PURPOSE.

== 3. Compile from source ==

[1] The binary files in this package were compiled on Debian Linux (sid).
To compile the files from the source package, you need to install
at least the following packages via the apt-get command.

   binutils build-essential 
   cvs git wget 
   (for 32bit Windows) gcc-mingw32 mingw32-binutils mingw32-runtime
   (for 64bit Windows) binutils-mingw-w64 gcc-mingw-w64 mingw-w64
                       mingw-w64-dev mingw32-runtime 

[2] Download the SDPA source file sdpa_$(SDPA_VERSION).tar.gz 
(for example, sdpa_7.3.5.tar.gz) from http://sdpa.sourceforge.net.
Put the file sdpa_7.3.5.tar.gz in this directory.
** The SDPA version should be 7.3.5 or later. **

[3] Compile with make command.
(32bit Windows) $ make SDPA_VERSION=7.3.5 CROSS=i586-mingw32msvc BIT=32 sdpa
(64bit Windows) $ make SDPA_VERSION=7.3.5 CROSS=x86_64-w64-mingw32 BIT=64 sdpa
This will automatically download pthreads-win32, OpenBLAS 
and compile them, then compile SDPA.
You will find the compiled binary package named
sdpa-7.3.5-windows.zip.

[4] (Option) for SDPA-M [Matlab environment].

This step must be executed after 'make sdpa' is finished
successfully.

First you need to copy the header and libraries files from
Windows-version Matlab.
Copy 
(32bit Windows) $MATLAB\extern\lib\win32\microsoft directory 
(64bit Windows) $MATLAB\extern\lib\win64\microsoft directory 
under
matlab-extern/ directory
and copy 
$MATLAB\extern\include directory under
matlab-extern/ directory.

The command 
$ make sdpam-checkfiles
is prepaered to check whether the files are copied
into appropriate directory.

Then 
(32bit Windows) $ make SDPA_VERSION=7.3.5 CROSS=i586-mingw32msvc BIT=32 sdpam
(64bit Windows) $ make SDPA_VERSION=7.3.5 CROSS=x86_64-w64-mingw32 BIT=64 sdpam
will add mex files to sdpam-7.3.5-windows.zip.

