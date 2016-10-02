# Using Software

This is a basic repository of software modules (meaning lua files, which basically add a folder with a software’s executable to your path).

To use it you need to include the following line in your `.bashrc`, or a separate `.modules` file (details below)


        module use /share/PI/langlotz/software/modules


Then you can activate a module like:


        module load anaconda3


to verify that it works type:


      $ which python
      /share/PI/langlotz/software/anaconda3/bin/python


To ensure that a specific software is always loaded, I would recommend creating a file called .modules in your home directory:


      $ cd $HOME
      touch .modules
      echo  “module use /share/PI/langlotz/software/modules” >> .modules
      echo  “module load anaconda3” >> .modules


And then source that file in your .bashrc or .bash_profile


      echo  “source $HOME/.modules” >> $HOME/.bash_profile

    
You can also load them as needed.


## Software Included

- python stack (anaconda2) and (anaconda3)
- rmate (for file remote editing over ssh; see: https://atom.io/packages/remote-atom)

### Installing Python Packages for a single user:

      pip install --user <package>

