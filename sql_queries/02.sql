SELECT T.D_ID , T.P_ID FROM Treats T, Works_In W
WHERE W.D_ID = T.D_ID and W.C_ID =
(SELECT C.C_ID FROM Clinic C WHERE C.C_Name = 'Golden Valley Clinic');