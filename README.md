# CustomBashTool
A tool to easily install my custom bash env.

## Prerequisites

* Linux (tested on Ubuntu 16.04) - Should be compatible with others Linux based OS
* Bash (tested on GNU bash 4.3.48(1)-release)

## How to install

Quite simple.
Download the repository and run install script.

```
#> git clone https://github.com/Waether/CustomBashTool.git
#> cd CustomBashTool
#> ./install.sh
```

Then you have to add rights for your user.

```
#> sudo usermod -a -G custombash <some_user>
```

The last step is copying the .bashrc and using it.

```
mv ~/.bashrc ~/.bashrc.backup && ln -s ./ressources/.bashrc ~/.bashrc
```

## TODO
* Nothing Planned

## Authors

* **Nathan Hautbois** - [Waether](https://github.com/Waether)
