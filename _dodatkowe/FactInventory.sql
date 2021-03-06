USE [ContosoRetailDW]
GO

CREATE VIEW [olap].[vFactInventory]
AS
SELECT 
	[InventoryKey]
,	[DateKey]
,	[StoreKey]
,	[ProductKey]
,	[CurrencyKey]
,	[OnHandQuantity]
,	[OnOrderQuantity]
,	[SafetyStockQuantity]
,	[UnitCost]
FROM [dbo].[FactInventory]
GO

--	1. dodać do DSV, połączyć z istniejącymi tabelami po FK
--	2. dodać grupę miar w kostce
--	3. dodać wymiar Product (i Currency jak ktoś już ma) do kostki
--	4. sprawdzić Dimension Usage (połączenia MG-Wymiar)
--	5. Deploy
--	6. Process
--	7. Excel