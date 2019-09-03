
## Why should I care

### Myth 1: LOL, I don't write shellscripts

> Let's say I'm mostly writing C++, occasionally a Makefile, and when it comes time to test, I just literally copypaste from my terminal into a file.
> It works on my machine, what could possibly go wrong?
> Do I need to know anything about this?
> Am I writing a shellscript anywhere?

> Oh yes, shellscripts are everywhere.

*Every line in a makefile recipe is a shellscript.*

    # Makefile
    all:
        gcc main.c -o program

*Worse than a shellscript: A program that writes a shellscript!*

    // C++
    std::string cmd = "command ";
    cmd += argument;
    system(cmd.c_str());

*As for what could possibly go wrong … let's come back to that.*

    d=/tmp/scratch
    mkdir $d/
    ./program $d/
    rm -rf $scratch/

### Myth 2: LOL, I don't make those bugs because I use a proper programming language.

> As everyone knows, shellscript languages are terrible.
> Couldn't we just write everything in proper programming languages?
> What is even a shellscript language?

To cite the author of the Oil shell [citation needed]:

> Shellscripts are programming glue.


> Shellscript languages are based on commands – the command is the building block.
> If your program has no business running other programs, of course don't choose shellscript.
> And sure, today's shellscript languages happen to be far from the ideals of safe programming,
> but that's not part of the definition. That's legacy and dreadful backward compatibility.
> Idiomatic bugs
> Up there in the platonic world, there is a language, that is a shellscript language, that is not terrible.



*Just set an environment variable and redirect stderr→stdout … Now, doing it properly in C++ became a lot harder!*

    // C++
    std::string cmd = "LANG=C.UTF-8 python3 ";
    cmd += script;
    cmd += " 2>&1";
    system(cmd.c_str());
