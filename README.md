# gdl2ssat
A solver for single-player game against the random player using the SSAT framework. ```sasp2ssat.py``` is also a converter from stochastic ASP to SSAT.


## How to run

```
    python extg2ssat.py [name-of-x,name-of-o,name-of-random] [path-to-the-ext-asp] [path-to-the-output-ssat-instance]

    SharpSSAT -s -u [path-to-the-output-ssat-instance] 
```

Examples:


For Single-player stochastic games (1 VS random):

```
    python extg2ssat.py xplayer,,oplayer SinglePlayer/Translations/connect-3-stochastic-4x4.asp out.sdimacs 

    SharpSSAT -s out.sdimacs
```

For Single-player stochastic games (1 VS opponent + random):

```
    python extg2ssat.py xplayer,oplayer,random SinglePlayer/Translations/connect-3-stochastic-4x4.asp out.sdimacs 

    SharpSSAT -s -u out.sdimacs
```



## Dependencies

* Clingo: https://github.com/potassco/clingo

* Python 3+

* The dependencies of sasp2ssat (i.e., lp2normal2, lp2acyc, lp2sat) https://research.ics.aalto.fi/software/asp/download/ (lp2normal2, lp2acyc, lp2sat must be put into PATH)

* SharpSSAT: https://github.com/NTU-ALComLab/SharpSSAT



