# DADIS_Ovinger


VIVADO MED GITHUB GUIDE:

Update:
Bro jeg vet ikke lenger

Vi synkroniserer bare source-filene med github, resten av prosjektet skal være utenfor githubmappen.
Source filene vil si .vhdl filer som systemet og testbenker.

1. Lag ny prosjekt
2. Legg til mappen fra github som source direcctory i setupet, men IKKE SOM KOPI DA ØDELEGGER DU ALT
3. Legg til PYNQ-Z1_C.xdc som constraints


Klokke for kule klokkebehov
1. Under "Open Synthesized Design", trykk "Edit Timing Constraints"
2. Lag ny klokke med + eller dobbeltrykk, gi den følgende innstillinger:
navn: clk, period: ønsket periode, Source Objects: [get_ports clk]
