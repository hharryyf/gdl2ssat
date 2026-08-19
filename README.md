# gdl2ssat
A solver for single-player game against the random player using the SSAT framework. ```sasp2ssat.py``` is also a converter from stochastic ASP to SSAT. Note that the encoding implements a superset of the methods covered in the paper.


## How to run

```
    python extg2ssat_turn_v2.py [name-of-x,name-of-o,name-of-random] [path-to-the-ext-asp] [path-to-the-output-ssat-instance] 

    SharpSSAT -s -u [path-to-the-output-ssat-instance] 
```

Examples:


For Single-player stochastic games (1 VS random):

```
    python extg2ssat_turn_v2.py xplayer,,oplayer SinglePlayer/Translations/connect-3-stochastic-4x4.asp out.sdimacs 

    SharpSSAT -s out.sdimacs
```

For Single-player stochastic games (1 VS opponent + random):

```
    python extg2ssat_turn_v2.py xplayer,oplayer,random SinglePlayer/Translations/connect-3-stochastic-4x4.asp out.sdimacs 

    SharpSSAT -s -u out.sdimacs
```

For deterministic two-player games, it is recommended to use the software [here](https://github.com/hharryyf/gdl2qbf-general).

To run the baseline encoding, just replace ```extg2ssat_turn_v2.py``` in the commands with ```extg2ssat_turn_v2_base.py```.

## Dependencies

* Clingo: https://github.com/potassco/clingo

* Python 3+

* The dependencies of sasp2ssat (i.e., lp2normal2, lp2acyc, lp2sat) https://research.ics.aalto.fi/software/asp/download/ (lp2normal2, lp2acyc, lp2sat must be put into PATH)

* SharpSSAT: https://github.com/NTU-ALComLab/SharpSSAT



