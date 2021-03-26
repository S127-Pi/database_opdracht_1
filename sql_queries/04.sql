SELECT AVG(P1.P_Age)  - AVG(P2.P_Age) AS difference
FROM Patient  P1, Patient P2
WHERE P1.Insurance == "OZ" AND P2.Insurance == "Zilveren Ster";
