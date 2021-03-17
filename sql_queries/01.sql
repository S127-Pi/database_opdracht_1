SELECT D_ID AS ID, D_Name as Name, Speciality as Expertise FROM Doctor
WHERE D_ID not in (SELECT D_ID FROM Treats);
