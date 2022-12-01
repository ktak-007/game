# Game
Functional example versus one interesting OOP idea

The idea was taken from the speech https://youtu.be/75U9eefFYoU - the simple game was demonstrated here in imperative style at first (langs Basic, C and Java were used to demonstrate), and than the "correct" OOP style was demonstrated:

![OOP example](/oop.png)

It became interesting for me to show the same elegant program in Haskell.

And here it is:
```
farewell $ attempts 5 n $ verbose $ diff n guess
```
or, if you prefer backward style:
```
diff n guess & verbose & attempts 5 n & farewell
```
These program codes you can found in func1.hs and func2.hs.

Of course I wrote a la Basic lang example in Haskell - you can see it in basic.hs file.

## Install

You have to install [The Haskell Tool Stack](https://docs.haskellstack.org/en/stable/install_and_upgrade/) on you computer: 

### Linux/macOS

```
curl -sSL https://get.haskellstack.org/ | sh
```

### Windows 64-bit

[Windows installer](https://get.haskellstack.org/stable/windows-x86_64-installer.exe)

## Run

These files are able to run as scripts:
```
stack func1.hs
stack func2.hs
stack func3.hs
```
WARNING: The Haskell compiler with libs will be downloaded! Several Gigabytes of disk space required.
