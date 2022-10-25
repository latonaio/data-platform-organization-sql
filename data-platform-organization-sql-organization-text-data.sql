CREATE TABLE `data_platform_organization_organization_text_data`
(
    `BusinessPartner`       int(12) NOT NULL,
    `Organization`          varchar(6) NOT NULL,
    `Language`              varchar(2) NOT NULL,
    `OrganizationName`      varchar(100) DEFAULT NULL,
  
    PRIMARY KEY (`BusinessPartner`, `Organization`, `Language`),
    
    CONSTRAINT `DataPlatformOrganizationOrganizationTextData_fk` FOREIGN KEY (`BusinessPartner`, `Organization`) REFERENCES `data_platform_organization_organization_data` (`BusinessPartner`, `Organization`),
    CONSTRAINT `DataPlatformOrganizationOrganizationTextDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
