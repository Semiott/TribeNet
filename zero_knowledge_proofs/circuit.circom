cat <<EOT > circuit.circom
template ImmunityMultiplier() {
    signal private input ImmunitySource1;
    signal private input ImmunitySource2;
    signal private input ImmunitySource3;
    signal output ProofOfImmunity;

    ProofOfImmunity <== ImmunitySource1*ImmunitySource2*ImmunitySource3;
}

component main = ImmunityMultiplier();
EOT
