template ImmunityMultiplier(ImmunityFactor) {
    signal private input ImmunityType;
    signal private input ImmunitySource;
    signal output ImmunityIndex;

    signal int[ImmunityFactor];

    int[0] <== ImmunityType*ImmunityType + ImmunitySource;
    for (var i=1; i<ImmunityFactor; i++) {
    int[i] <== int[i-1]*int[i-1] + ImmunitySource;
    }

    ImmunityIndex <== int[ImmunityFactor-1];
}

component main = ImmunityMultiplier(1000);
