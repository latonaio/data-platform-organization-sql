CREATE TABLE `data_platform_organization_organization_data`
(
    `BusinessPartner`        int(12) NOT NULL,
    `Organization`           varchar(6) NOT NULL,

    PRIMARY KEY (`BusinessPartner`, `Organization`),
    
    CONSTRAINT `DataPlatformOrganizationOrganizationDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
