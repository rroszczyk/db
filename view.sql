-- SELECT * FROM Peoples;


CREATE VIEW PeopleInCompany AS
SELECT W.Name AS WomenFirstName,
	   M.Name AS MenFirsNAme,
	   P.Company AS Company,
	   S.Name AS Pet
	   FROM Peoples AS P
	LEFT JOIN WomenNames AS W ON P.WomenNameId=W.Id
	LEFT JOIN MenNames AS M ON P.MenNameId=M.Id
	LEFT JOIN Pets AS S ON P.PetId=S.Id

SELECT * FROM PeopleInCompany