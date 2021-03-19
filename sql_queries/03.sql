SELECT D.D_ID as ID, D.D_Name as Name FROM Doctor D
WHERE D.Speciality = 'General practitioner' and
D.D_ID in(SELECT D_ID FROM Works_In
WHERE C_ID !=(SELECT C_ID FROM Clinic WHERE C_Address = 'West Virginia Avenue'));
