#!/bin/bash
# Downloads one simple CIF per missing space group into the current folder.
mkdir -p cod_fill && cd cod_fill
curl -s -O https://www.crystallography.net/cod/1008916.cif   # SG 3 P 1 2 1  F7 K Yb2
curl -s -O https://www.crystallography.net/cod/4119149.cif   # SG 6 P 1 m 1  K Nb O3
curl -s -O https://www.crystallography.net/cod/1544552.cif   # SG 10 P 1 2/m 1  Al O4 P
curl -s -O https://www.crystallography.net/cod/1525209.cif   # SG 17 P 2 2 21  D1.37 Fe Ti
curl -s -O https://www.crystallography.net/cod/4344305.cif   # SG 21 C 2 2 2  Ho Sb2
curl -s -O https://www.crystallography.net/cod/1521320.cif   # SG 22 F 2 2 2  Cu O2
curl -s -O https://www.crystallography.net/cod/7209475.cif   # SG 23 I 2 2 2  B P S4
curl -s -O https://www.crystallography.net/cod/9006301.cif   # SG 24 I 21 21 21  O2 Si
curl -s -O https://www.crystallography.net/cod/1509294.cif   # SG 25 P m m 2  Ag Cu Te2
curl -s -O https://www.crystallography.net/cod/4001944.cif   # SG 30 P n c 2  Ag I3 O8
curl -s -O https://www.crystallography.net/cod/9012540.cif   # SG 34 P n n 2  Fe Sb2
curl -s -O https://www.crystallography.net/cod/9008052.cif   # SG 35 C m m 2  Cd Cl2 N2
curl -s -O https://www.crystallography.net/cod/2003027.cif   # SG 37 C c c 2  Li2 O5 Si2
curl -s -O https://www.crystallography.net/cod/2310656.cif   # SG 44 I m m 2  Hg O
curl -s -O https://www.crystallography.net/cod/9006289.cif   # SG 46 I m a 2  O2 Si
curl -s -O https://www.crystallography.net/cod/1510202.cif   # SG 47 P m m m  Au K O2
curl -s -O https://www.crystallography.net/cod/1531068.cif   # SG 49 P c c m  O5 Ta2
curl -s -O https://www.crystallography.net/cod/1000414.cif   # SG 50 P n c b :1  La2 Ni O4
curl -s -O https://www.crystallography.net/cod/1533015.cif   # SG 51 P m m b  Cu0.5 Ni0.5 Ti
curl -s -O https://www.crystallography.net/cod/1530590.cif   # SG 53 P m n a  Sb2 Se4 Tl2
curl -s -O https://www.crystallography.net/cod/1510111.cif   # SG 55 P b a m  Au Cu0.9 Ga0.1
curl -s -O https://www.crystallography.net/cod/1526563.cif   # SG 65 C m m m  Li2 N Na
curl -s -O https://www.crystallography.net/cod/1525007.cif   # SG 66 C c c m  D3.4 Ti4
curl -s -O https://www.crystallography.net/cod/9012694.cif   # SG 67 C m m a  O Pb
curl -s -O https://www.crystallography.net/cod/1523674.cif   # SG 71 I m m m  Ni2 V
curl -s -O https://www.crystallography.net/cod/1535987.cif   # SG 73 I b c a  Li4 N3 Ta
curl -s -O https://www.crystallography.net/cod/1527280.cif   # SG 74 I m m a  Ca Ga1.184 Pd0.296
curl -s -O https://www.crystallography.net/cod/1551985.cif   # SG 83 P 4/m  Cu La O3
curl -s -O https://www.crystallography.net/cod/1536093.cif   # SG 84 P 42/m  Co4 In9.08 Zn2.92
curl -s -O https://www.crystallography.net/cod/9010293.cif   # SG 91 P 41 2 2  Fe2 Mg O4
curl -s -O https://www.crystallography.net/cod/1511227.cif   # SG 94 P 42 21 2  B Li3 N2
curl -s -O https://www.crystallography.net/cod/1549041.cif   # SG 95 P 43 2 2  Ge O4 Zn2
curl -s -O https://www.crystallography.net/cod/9008973.cif   # SG 98 I 41 2 2  Nb P
curl -s -O https://www.crystallography.net/cod/1533406.cif   # SG 99 P 4 m m  O2.802 Pb0.983 Ti
curl -s -O https://www.crystallography.net/cod/2106680.cif   # SG 100 P 4 b m  K2 O8 V3
curl -s -O https://www.crystallography.net/cod/1532684.cif   # SG 101 P 42 c m  Mg11.92 Ni2.32 Sn1.76
curl -s -O https://www.crystallography.net/cod/1000239.cif   # SG 102 P 42 n m  F6 Fe2 Li
curl -s -O https://www.crystallography.net/cod/1539312.cif   # SG 103 P 4 c c  Nb Te4
curl -s -O https://www.crystallography.net/cod/7222662.cif   # SG 105 P 42 m c  Ba Ge2 P2
curl -s -O https://www.crystallography.net/cod/2002219.cif   # SG 108 I 4 c m  Bi2 O4 Pd
curl -s -O https://www.crystallography.net/cod/1510056.cif   # SG 109 I 41 m d  Au0.2 Nd Si1.8
curl -s -O https://www.crystallography.net/cod/2002187.cif   # SG 111 P -4 2 m  Ba Bi O3
curl -s -O https://www.crystallography.net/cod/1525948.cif   # SG 112 P -4 2 c  Cu0.65 In1.99 Se3.6
curl -s -O https://www.crystallography.net/cod/1534188.cif   # SG 115 P -4 m 2  Ba0.726 Bi1.261 O2.65
curl -s -O https://www.crystallography.net/cod/2310528.cif   # SG 116 P -4 c 2  F6 K Nb
curl -s -O https://www.crystallography.net/cod/1539545.cif   # SG 120 I -4 c 2  Cr F4 Sr
curl -s -O https://www.crystallography.net/cod/2300522.cif   # SG 124 P 4/m c c  Nb Te4
curl -s -O https://www.crystallography.net/cod/1522990.cif   # SG 125 P 4/n b m :1  Mo0.96 U7.04
curl -s -O https://www.crystallography.net/cod/7221237.cif   # SG 127 P 4/m b m  Hg Ni
curl -s -O https://www.crystallography.net/cod/1521532.cif   # SG 130 P 4/n c c :2  O3 W
curl -s -O https://www.crystallography.net/cod/1008119.cif   # SG 131 P 42/m m c  Cu0.8 O Pt0.2
curl -s -O https://www.crystallography.net/cod/1509333.cif   # SG 132 P 42/m c m  Ag F6 Ta
curl -s -O https://www.crystallography.net/cod/1538473.cif   # SG 133 P 42/n b c :2  P Ta3
curl -s -O https://www.crystallography.net/cod/1509667.cif   # SG 134 P 42/n n m :2  Ag2 Li3 Si3
curl -s -O https://www.crystallography.net/cod/1510610.cif   # SG 138 P 42/n c m :2  Au Br
curl -s -O https://www.crystallography.net/cod/1008662.cif   # SG 142 I 41/a c d :1  Ir O4 Sr2
curl -s -O https://www.crystallography.net/cod/1540884.cif   # SG 143 P 3  In Si Te3
curl -s -O https://www.crystallography.net/cod/1530197.cif   # SG 149 P 3 1 2  U V2
curl -s -O https://www.crystallography.net/cod/7222957.cif   # SG 151 P 31 1 2  Ga Na Sn5
curl -s -O https://www.crystallography.net/cod/1010575.cif   # SG 153 P 32 1 2  Cl3 Cr
curl -s -O https://www.crystallography.net/cod/7209296.cif   # SG 156 P 3 m 1  Ag Al S2
curl -s -O https://www.crystallography.net/cod/1537749.cif   # SG 160 R 3 m :R  N3 Na
curl -s -O https://www.crystallography.net/cod/1010510.cif   # SG 174 P -6  N Nb2
curl -s -O https://www.crystallography.net/cod/1530152.cif   # SG 175 P 6/m  O3.12 Ta1.52
curl -s -O https://www.crystallography.net/cod/4345610.cif   # SG 179 P 65 2 2  B4 Ni O7
curl -s -O https://www.crystallography.net/cod/2310567.cif   # SG 181 P 64 2 2  Re0.1 Si2 Ti0.9
curl -s -O https://www.crystallography.net/cod/1523551.cif   # SG 182 P 63 2 2  Ni2 Si
curl -s -O https://www.crystallography.net/cod/1532706.cif   # SG 183 P 6 m m  D5.22 La0.95 Ni5.09
curl -s -O https://www.crystallography.net/cod/1533192.cif   # SG 185 P 63 c m  Ba3 Cr S5
curl -s -O https://www.crystallography.net/cod/1527786.cif   # SG 187 P -6 m 2  Sn0.85 Zn0.15
curl -s -O https://www.crystallography.net/cod/1527375.cif   # SG 188 P -6 c 2  Ba5 Ga6
curl -s -O https://www.crystallography.net/cod/4030938.cif   # SG 190 P -6 2 c  O4 Rh2 Sr
curl -s -O https://www.crystallography.net/cod/9000045.cif   # SG 196 F 2 3  Cu5 Fe S4
curl -s -O https://www.crystallography.net/cod/1511475.cif   # SG 197 I 2 3  B4 Li5
curl -s -O https://www.crystallography.net/cod/2310109.cif   # SG 200 P m -3  B4.2 Pd0.84 Th
curl -s -O https://www.crystallography.net/cod/9005769.cif   # SG 201 P n -3 :1  Cu2 O
curl -s -O https://www.crystallography.net/cod/7223706.cif   # SG 202 F m -3  Cu F6 Zr
curl -s -O https://www.crystallography.net/cod/1010126.cif   # SG 208 P 42 3 2  P2 Zn3
curl -s -O https://www.crystallography.net/cod/1528204.cif   # SG 209 F 4 3 2  Na3 O4 P
curl -s -O https://www.crystallography.net/cod/1010954.cif   # SG 210 F 41 3 2  O2 Si
curl -s -O https://www.crystallography.net/cod/2107402.cif   # SG 212 P 43 3 2  Si2 Sr
curl -s -O https://www.crystallography.net/cod/1010134.cif   # SG 217 I -4 3 m  F4 Si
curl -s -O https://www.crystallography.net/cod/1010493.cif   # SG 218 P -4 3 n  Ag3 O4 P
