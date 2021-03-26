SELECT DISTINCT T1.D_ID FROM Treats T1, Treats T2
WHERE T1.D_ID = T2.D_ID
AND (T1.Treatment_Status == 1 AND T2.Treatment_Status == 0);
