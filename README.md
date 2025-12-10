# gdl2ssat
A solver for single-player game against the random player using the SSAT framework. ```sasp2ssat.py``` is also a converter from stochastic ASP to SSAT.


## How to run

```
    python extg2ssat.py [player] [path-to-the-ext-asp] [path-to-the-output-ssat-instance]

    DSSATpre --stochastic 1 -o [path-to-the-preprocessed-ssat-instance] [ssat-instance]

    SharpSSAT -s [path-to-the-preprocessed-ssat-instance] 
```



## Dependencies

* Clingo: https://github.com/potassco/clingo

* Python 3+

* The dependencies of sasp2ssat (i.e., lp2normal2, lp2acyc, lp2sat) https://research.ics.aalto.fi/software/asp/download/ (lp2normal2, lp2acyc, lp2sat must be put into PATH)


* SharpSSAT: https://github.com/NTU-ALComLab/SharpSSAT

* DSSATpre: https://github.com/NTU-ALComLab/DSSATpre


