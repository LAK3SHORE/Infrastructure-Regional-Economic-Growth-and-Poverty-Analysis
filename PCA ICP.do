*PCA

pca bibliotecas_pob cajeros_pob vehiculos_pob gasolineras_pob víasferreas_sup carretera_sup electricidad cuartos_ocupados_e

gen p11 =0.3349
gen p12 =0.1954 
gen p13 =0.1325 
gen p14 =0.1056
gen p15 =0.0879
gen p16 =0.0613

predict pc11 pc12 pc13 pc14 pc15 pc16, score
gen icp=(p11*pc11)+(p12*pc12)+(p13*pc13)+(p14*pc14)+(p15*pc15)+(p16*pc16)

gen icpentrecerouno= (icp-( -1.385229))/(4.386498-( -1.385229))



reg lnpibpcm icpentrecerouno


collapse(mean) icpentrecerouno, by(id)