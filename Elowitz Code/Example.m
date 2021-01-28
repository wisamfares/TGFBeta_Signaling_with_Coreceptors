XC=logspace(-2.5,2.5,13);
YC=logspace(-2.5,2.5,13);
expon = linspace(-2.5,2.5,13);


% XC=logspace(-4,4,13);
% YC=logspace(-4,4,13);

% Original Parameters from Elowitz
prms = [
    0.07,0.0072,...A_j receptors
    14.5,0.002,...B_k receptors
    1,0,0,1,...KD_ij
    0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KT_ijk
    0.012,0.48,0,0,0.18,0.044,0,0,...e_ijk
    ];
% % % 

prms = [
    3,0.001,...A_j receptors
    14.5,2,...B_k receptors
    0.55,0.45,0.032,0.97,...KA_ij
    0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KB_ijk
    0.012,0.48,0.097,0.047,0.18,0.044,0.087,0.048...e_ijk
    ];
% prms = [
%     0.07,0.0072,...A_j receptors
%     14.5*10^-10,0.02*10^-10,...B_k receptors
%     0.55,0.45,0.032,0.97,...KA_ij
%     0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KB_ijk
%     0.012,0.48,0.097,0.047,0.18,0.044,0.087,0.048...e_ijk
%     ];
% 
% prms = [
%     0.0072,0.07,...A_j receptors
%     0.002,14.5,...B_k receptors
%     0,0, 0.55, 0.45,...KA_ij
%     0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KB_ijk
%     0.012,0.48,0.097,0.047,0.18,0.044,0.087,0.048...e_ijk
%     ];

% prms = [
%     3,0.001,...A_j receptors
%     14.5,0.002,...B_k receptors
%     0.55,0.45,0.032,0.97,...KA_ij
%     0.10,0.039,0.02,0.14,0.28,0.0067,0.27,0.13,...KB_ijk
%     0.012,0.48,0.097,0.047,0.18,0.044,0.087,0.048...e_ijk
%     ];

% prms = rand(1,24)
figure(2)

[MIMB,T]=Model_2d(XC, YC, prms);
imagesc(MIMB)
set(gca,'YDir','normal')

%Make label array from ligand concentration values (same X and Y range)
label = cell(1,length(XC));
for i = 1:length(XC)
    label{i} =['10^{' num2str(round(expon(i),2)) '}'];
end
set(gca,'XTick',1:2:13,'XTickLabel',label(1:2:13))
set(gca,'YTick',1:2:13, 'YTickLabel',label(1:2:13))

xlabel('Ligand 1')
ylabel('Ligand 2')

