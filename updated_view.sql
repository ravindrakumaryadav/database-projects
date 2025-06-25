2. CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `acme pharmaceuticals`.`allpatients_at_all_sites` AS
    SELECT 
        `p`.`PatientNumber` AS `PatientNumber`,
        `s`.`SiteID` AS `SiteID`
    FROM
        (`acme pharmaceuticals`.`patients` `p`
        JOIN `acme pharmaceuticals`.`sites` `s`)
		

3. CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `acme pharmaceuticals`.`randomised_patients` AS
    SELECT 
        `r`.`RandomCode` AS `RandomCode`,
        `s`.`SiteID` AS `SiteID`,
        `p`.`PatientNumber` AS `PatientNumber`
    FROM
        ((`acme pharmaceuticals`.`randomcodes` `r`
        JOIN `acme pharmaceuticals`.`sites` `s`)
        JOIN `acme pharmaceuticals`.`patients` `p`)


4. CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `acme pharmaceuticals`.`available_randomecode` AS
    SELECT 
        `r`.`RandomCode` AS `RandomCode`, `s`.`StudyID` AS `StudyID`
    FROM
        (`acme pharmaceuticals`.`randomcodes` `r`
        JOIN `acme pharmaceuticals`.`studies` `s`)
    WHERE
        (`r`.`Treatment` = 'A')
		
5.  CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `acme pharmaceuticals`.`available_drug` AS
    SELECT 
        `s`.`SiteID` AS `SiteID`,
        `d`.`DrugKitNumber` AS `DrugKitNumber`
    FROM
        (`acme pharmaceuticals`.`sites` `s`
        JOIN `acme pharmaceuticals`.`drugkits` `d`)
    WHERE
        (`d`.`Treatment` = 'A')
		
		
6.  CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `acme pharmaceuticals`.`withdraw_patients` AS
    SELECT 
        `p`.`PatientNumber` AS `PatientNumber`,
        `s`.`SiteID` AS `SiteID`,
        `w`.`WithdrawDesc` AS `WithdrawDesc`
    FROM
        ((`acme pharmaceuticals`.`patients` `p`
        JOIN `acme pharmaceuticals`.`sites` `s`)
        JOIN `acme pharmaceuticals`.`withdrawreasons` `w`)