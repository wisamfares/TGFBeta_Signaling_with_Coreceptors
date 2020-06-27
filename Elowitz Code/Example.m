XC=logspace(-1.4,2.5,13);
YC=logspace(-0.9,3.5,13);
prms = [
    0.07,0.0072,...A_j receptors
    14.5,0.002,...B_k receptors
    0.55,0.45,0.032,0.97,...KA_ij
    0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KB_ijk
    0.012,0.48,0.097,0.047,0.18,0.044,0.087,0.048...e_ijk
    ];
MIMB=Model_2d(XC, YC, prms);
imagesc(MIMB)
set(gca,'YDir','normal')

