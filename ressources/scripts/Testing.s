# Ceci est un commentaire en en-tete de script
# normalement cela ne devrait pas �tre charg�
# lors de la phase d'analyse.
#
# Auteur : Bertrand LE GAL
#
# Description : script pour valider le module les g�rant...
#
gc_LoadGraph(%1.gc)
gc_LoadOprName(%1.op)
gc_LoadMemMapping(%1.map)
hls_DelayInsertion()
