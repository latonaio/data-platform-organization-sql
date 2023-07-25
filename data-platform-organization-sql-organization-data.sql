CREATE TABLE `data_platform_organization_organization_data`
(
    `BusinessPartner`        int(12) NOT NULL,
    `Organization`           varchar(6) NOT NULL,
    `OrganizationName`       varchar(200) NOT NULL,
    `ValidityStartDate`      date NOT NULL,
    `ValidityEndDate`        date NOT NULL,
    `CreationDate`           date NOT NULL,
    `LastChangeDate`         date NOT NULL,
    `IsMarkedForDeletion`    tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Organization`),
    
    CONSTRAINT `DataPlatformOrganizationOrganizationDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
