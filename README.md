# DADIS_Ovinger
Oppgaver:
i tfe4141_rsa_integration_kit_2026:
  1. I Multiplier, implementer source/multiplier.vhd og testbench og test at den fungerer
  2. I RSA_accelerator, implementer source/rsa_datapath.vhd og source/rsa_controller.vhd og test at RSA fungerer med testbenken

VIVADO MED GITHUB GUIDE:

Update:
Bro jeg vet ikke lenger, tror det fungerer nærme gamle måten men med tfe4141-mappen

Vi synkroniserer bare source-filene med github, resten av prosjektet skal være utenfor githubmappen.
Source filene vil si .vhdl filer som systemet og testbenker.

1. Lag ny prosjekt
2. Legg til mappen fra github som source direcctory i setupet, men IKKE SOM KOPI DA ØDELEGGER DU ALT
3. Legg til PYNQ-Z1_C.xdc som constraints


Klokke for kule klokkebehov
1. Under "Open Synthesized Design", trykk "Edit Timing Constraints"
2. Lag ny klokke med + eller dobbeltrykk, gi den følgende innstillinger:
navn: clk, period: ønsket periode, Source Objects: [get_ports clk]
