# DESCR : Le script AreaSynthesis a ete developpe afin de permettre la synthese sous contrainte
# DESCR : de ressource l'application FIR 16 taps. Les contraintes materielles utilisees sont les
# DESCR : suivantes : 
# DESCR : - 4 Multiplieurs
# DESCR : - 4 Additionneurs
#
# HELP : Le script AreaSynthesis lance l'ensemble des commandes necessaires afin de generer une
# HELP : architecture monomode sous contrainte materielle. Le script a besoin lors de son appel
# HELP : au minimum d'un parametre specifiant la latence maximum post-synthese :
# HELP : (1) Contrainte de latence (nombre de cycles d'horloge) : TYPE ENTIER
#
# AUTHOR : Bertrand LE GAL
#
# ARGS   : 1
#
dyn_SetConstantBitwise(16, 1)
hls_GenDynamicMooreArchitecture(%1_SIGNED_16b_moore.vhd,$SIGNED)
dyn_SetConstantBitwise(16, 0)
hls_GenDynamicMooreArchitecture(%1_FLOAT_16b_moore.vhd,$FLOAT_16b)
dyn_SetConstantBitwise(32, 1)
hls_GenDynamicMooreArchitecture(%1_SIGNED_32b_moore.vhd, $SIGNED)
dyn_SetConstantBitwise(32, 0)
hls_GenDynamicMooreArchitecture(%1_FLOAT_32b_moore.vhd,$FLOAT_32b)