- Introduction
        - Content / goal: How to write cleaner and safer shell code
        - Why care?
                - Use in Make, Docker, system(), cron, ...
                - Speedup in everyday tasks
                - Small programs
        - Table of contents / structure

- Drivers' license to Bash
        - Quotes
        - Arrays

- Foster the best (practices)
        - Small pitfalls:
                - $10
                - backslashes inside ` `
                - overwrite global variables -> use declare or local
                - echo or not using -- -> use printf or --
                - Pipes lead to subshells -> in the worst case use `< <(pipe) read -rd '' s`
        - Use set -e (-uo pipefail) (and don't write unnecessary error handling code)
        - Don't use set -e:
                - Context: `f() { ( set -e; false; echo "D'ouu!" ); }; f && false`
                - more: http://mywiki.wooledge.org/BashFAQ/105/Answers
        - Good practices (here is where we can cut a bit):
                - (short) functions, sensible variable names, consistency
                - use bash options like nullglob
                - { } for grouping
                - ( ) for throwaway-environments (set, shopt, env, variables)
                - (( ))
                - [ -z ... ] -> [ ... != "" ]
                - <( )
                - << and <<<
                - [[ ]]
                - ${var//str/repl} etc.
                - useful program options, like grep -q, mkdir -p and rm -f
                - trap just on EXIT


- REMARKS:
        - Fine structure:
                - optionally: Problem
                - Explanation
                - optionally: Examples, details