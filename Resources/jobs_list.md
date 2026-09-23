This is the list of work to be completed by the schematic review. 

#Design Phase:

Topology is based from review of literature. Using the citation index numbers in from main.md:

1 and 5 are the same circuit. 5 is better written-up. 6 is a similar circuit (single ended). These are very good because the EA can be a single pole, i->v circuit, which are nice to design. The use of input v->i (otas) are useful because the high input impedance is maintained.

3 is a simple circuit. Its use of capacitive feedback is prohibited in this application, because we require a very high input impedance. One benefit of capacitive feedback is the zero Iq, zero noise contributed by feedback elements. From this, it is clear we want a design with few resistors, with the remaining resistors being large. This obviously directly trades with Iq, which is not good. 

2, 4 - very fancy and way too complicated for what we are doing

6, 7 are more primitive that what we are attempting, but are very useful as reference designs

9 is not an INA for the same application, but is useful as a reference design. 

Now we can clearly see a choice from the above (chopped circuits are excluded due to complexity):

3-ota v-mode INA: not great, have a high noise, high Iq, lots of resistive elements

single-ota (w/ capacitive feedback): simple and easy to design, but compromises high input impedance which is critical for our chosen applicaiton

i-feedback circuits (diff and non-diff): ideal for our use case.

From this, we propose to design something similar to 1 or 5. A 

#Proposed Design
We propose to design a current-feedback instrumentation amplifier in a three-OTA configuration. A bandwidth-boosted telescopic cascode OTA will serve as the primary OTA, while an auxiliary OTA will provide the gain-boosting functionality. The design will feature a 5-bit programmable  resistive gain in linear-in-dB steps. 

A second stage Sallen-Key AA filter will also be provided, should the user wish to engage it. The AA filter will feature a fine-gain setting that permits four, linear-in-dB steps to be selected. A programmable cuttoff frequency will also be implemented. 

#Components

- Main error amplifier (Telescopic cascode)
- 

> Port of https://github.com/idea-fasoc/openfasoc-tapeouts/tree/main/mpw18h1/opamp-gen/Programmable_2stage
> Modification of port to minimise power consumpton 
> 
