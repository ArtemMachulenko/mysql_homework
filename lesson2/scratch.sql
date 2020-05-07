    SET SQL_MODE = '';

    CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
    USE `bank` ;

    -- -----------------------------------------------------
    -- Table `mydb`.`Department`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `bank`.`department` (
       `idDepartment` INT NOT NULL,
       `DepartmentCity` VARCHAR(45) NULL,
       `CountOfWorkers` INT NULL,
       PRIMARY KEY (`idDepartment`))
       ENGINE = InnoDB;

    -- -----------------------------------------------------
    -- Table `mydb`.`Client`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `bank`.`client` (
        `idClient` INT NOT NULL,
        `FirstName` VARCHAR(45) NULL,
        `LastName` VARCHAR(45) NULL,
        `Education` VARCHAR(45) NULL,
        `Passport` VARCHAR(45) NULL,
        `City` VARCHAR(45) NULL,
        `Age` VARCHAR(45) NULL,
        `Department_idDepartment` INT NOT NULL,
        PRIMARY KEY (`idClient`),
        INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
        CONSTRAINT `fk_Client_Department`
           FOREIGN KEY (`Department_idDepartment`)
               REFERENCES `bank`.`department` (`idDepartment`)
               ON DELETE NO ACTION
               ON UPDATE NO ACTION)
        ENGINE = InnoDB;


    -- -----------------------------------------------------
    -- Table `mydb`.`Application`
    -- -----------------------------------------------------
    CREATE TABLE IF NOT EXISTS `bank`.`application` (
        `idApplication` INT NOT NULL,
        `Sum` INT NULL,
        `CreditState` VARCHAR(45) NULL,
        `Currency` VARCHAR(45) NULL,
        `Client_idClient` INT NOT NULL,
        PRIMARY KEY (`idApplication`),
        INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
        CONSTRAINT `fk_Application_Client1`
            FOREIGN KEY (`Client_idClient`)
                REFERENCES `bank`.`client` (`idClient`)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION)
        ENGINE = InnoDB;



    INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('1', 'Kyiv', '12');
    INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('2', 'Lviv', '15');
    INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('3', 'Rivne', '8');
    INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('4', 'Kyiv', '16');
    INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('5', 'Lviv', '10');

    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
    INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');

    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('1', '4000', 'Returned', 'Dollar', '1');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('3', '7500', 'Returned', 'Euro', '6');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('6', '4100', 'Returned', 'Dollar', '1');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('10', '9700', 'Returned', 'Dollar', '5');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('13', '4400', 'Not returned', 'Euro', '8');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('14', '2700', 'Returned', 'Dollar', '10');
    INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('15', '6600', 'Not returned', 'Euro', '3');


    -- #1. +Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.
    SELECT * FROM client
    WHERE LENGTH(FirstName) < 6;

    -- #2. +Вибрати львівські відділення банку.+
    SELECT Department_idDepartment as LvivDepartament FROM client
    WHERE City = 'Lviv';

    -- #3. +Вибрати клієнтів з вищою освітою та посортувати по прізвищу.
    SELECT * FROM client
    WHERE Education = 'high'
    ORDER BY LastName;

    -- #4. +Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.
    SELECT * FROM application
    ORDER BY idApplication DESC
    LIMIT 5 OFFSET 10;

    -- #5. +Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.
    SELECT * FROM client
    WHERE LastName LIKE '%ov' OR LastName LIKE '%ova';

    -- #6. +Вивести клієнтів банку, які обслуговуються київськими відділеннями.
    SELECT * FROM client
    WHERE City = 'Kyiv';

    -- #7. +Вивести імена клієнтів та їхні номера телефону, погрупувавши їх за іменами.
    SELECT COUNT(idClient) countFirstName, firstName
    FROM client GROUP BY firstName;

    -- #8. +Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.
    SELECT * FROM client
    JOIN application on Client_idClient = idClient
    WHERE sum > 5000;

    -- #9. +Порахувати кількість клієнтів усіх відділень та лише львівських відділень.
    SELECT COUNT(idClient) allClientsCount
    FROM client;

    SELECT COUNT(idClient) clientsLivivDepartament
    FROM client
    WHERE City = 'Lviv';

    -- #10. Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.
    -- #однiею таблицею
    SELECT MAX(Sum) maxSum, FirstName, lastName
    FROM client
    JOIN application on Client_idClient = idClient
    GROUP BY (idClient);

    -- # поокремо
    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 1;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 2;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 3;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 4;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 5;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 6;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 7;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
     JOIN application on Client_idClient = idClient
    WHERE idClient  = 8;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 9;

    SELECT MAX(Sum) maxSum, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 10;

    -- #11. Визначити кількість заявок на крдеит для кожного клієнта.
    -- #однiею таблицею
    SELECT COUNT(idClient) countSum, FirstName, lastName
    FROM client
    JOIN application on Client_idClient = idClient
    GROUP BY (idClient);

    -- # поокремо
    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 1;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 2;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 3;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 4;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 5;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 6;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 7;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 8;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 9;

    SELECT COUNT(idClient) countApplication, FirstName, LastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE idClient  = 10;

    -- #12. Визначити найбільший та найменший кредити.
    SELECT MAX(Sum) maxSum
    FROM client
    JOIN application on Client_idClient = idClient;

    SELECT MIN(Sum) minSum
    FROM client
    JOIN application on Client_idClient = idClient;

    -- #13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.
    SELECT COUNT(idClient) countSum, FirstName, lastName
    FROM client
    JOIN application on Client_idClient = idClient
    WHERE Education = 'high'
    GROUP BY (idClient);

    -- #14. Вивести дані про клієнта, в якого середня сума кредитів найвища.
    SELECT AVG(Sum) maxAvgSum, FirstName, lastName
    FROM client
    JOIN application on Client_idClient = idClient
    GROUP BY (idClient)
    ORDER BY (maxAvgSum) DESC
    LIMIT 1;

    -- # 15. Вивести відділення, яке видало в кредити найбільше грошей
    SELECT SUM(Sum) MaxMoney, Department_idDepartment
    FROM client
    JOIN application on Client_idClient = idClient
    GROUP BY Department_idDepartment
    ORDER BY (MaxMoney) DESC
    LIMIT 1;

    -- # 16. Вивести відділення, яке видало найбільший кредит.
    SELECT Max(Sum) MaxCredit, Department_idDepartment
    FROM client
    JOIN application on Client_idClient = idClient
    GROUP BY Department_idDepartment
    ORDER BY ( MaxCredit) DESC
    LIMIT 1;

    -- # 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.
    -- #?

    -- # 18. Усіх клієнтів київських відділень пересилити до Києва.
    -- #?

    -- # 19. Видалити усі кредити, які є повернені.
    DELETE FROM application
    WHERE CreditState =  'Returned';

    -- # 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.
    SELECT * FROM client
    WHERE LastName LIKE '_a%'
       OR LastName LIKE '_e%'
       OR LastName LIKE '_o%'
       OR LastName LIKE '_i%'
       OR LastName LIKE '_u%'
       OR LastName LIKE '_y%';

    -- # 21. Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000
    SELECT Max(Sum) MaxCredit, Department_idDepartment, DepartmentCity
    FROM client
    JOIN application on Client_idClient = idClient
    JOIN department on Department_idDepartment = idDepartment
    WHERE DepartmentCity = 'Lviv' AND Sum > 5000
    GROUP BY Department_idDepartment;

    





    Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000





    /* Знайти максимальний неповернений кредит.*/




    /*Знайти клієнта, сума кредиту якого найменша*/




    /*Знайти кредити, сума яких більша за середнє значення усіх кредитів*/



    /*Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів



    місто чувака який набрав найбільше кредитів



    set sql_safe_updates = 0;
    set sql_safe_updates = 1;

     */