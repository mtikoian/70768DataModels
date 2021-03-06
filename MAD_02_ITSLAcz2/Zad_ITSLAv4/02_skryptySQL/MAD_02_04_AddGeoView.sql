USE [ContosoRetailDW];
GO

CREATE VIEW [olap].[vDimGeography]
AS
    SELECT
        [GeographyKey]
	,	[GeographyName]	=	CASE [GeographyType]
								WHEN	'City'				THEN [CityName]
								WHEN	'Continent'			THEN [ContinentName]
								WHEN	'Country/Region'	THEN [RegionCountryName]
								WHEN	'State/Province'	THEN [StateProvinceName]
								END
    ,   [GeographyType]
    ,   [ContinentName]
    ,   [CityName]
    ,   [StateProvinceName]
    ,   [RegionCountryName]
    FROM
        [dbo].[DimGeography];