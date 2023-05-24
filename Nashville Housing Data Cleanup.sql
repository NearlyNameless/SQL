--Selects all data from NashvilleHousng table 

Select *
From SQLPortfolio..NashvilleHousing


-- Selects collum Sale Date and converts the data type to Date

Select SaleDate, CONVERT(Date,SaleDate)
From SQLPortfolio..NashvilleHousing;

Update NashvilleHousing
SET SaleDate = CONVERT(Date,SaleDate)

--Adds collum to table and puts in the converted data into it

ALTER TABLE NashvilleHousing
Add SaleDateConverted Date;

Update NashvilleHousing
SET SaleDateConverted = CONVERT(Date,SaleDate)


--Selects all data within table where PropertyAddress is null

Select *
From SQLPortfolio..NashvilleHousing
Where PropertyAddress is null
order by ParcelID

-- Selects data with the same parcelID to find the correct propertyaddress

Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress,b.PropertyAddress)
From SQLPortfolio..NashvilleHousing a
JOIN SQLPortfolio..NashvilleHousing b
	on a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null

--Updates the table to put in the correct property address within the blanks via ParcelID

Update a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
From SQLPortfolio..NashvilleHousing a
JOIN SQLPortfolio..NashvilleHousing b
	on a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
Where a.PropertyAddress is null

--This spilts up the data within the collum Property address ,via the comma in the data, so its easier to understand and use when querying   

SELECT
SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 ) as Address
, SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress)) as Address
From SQLPortfolio..NashvilleHousing

--Adds a collum named PropertySplitAddress into the table 

ALTER TABLE NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

--Updates the table by adding in the splitted data within the new collum

Update NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1 )

--Adds a collum named PropertySplitCity into the table 

ALTER TABLE NashvilleHousing
Add PropertySplitCity Nvarchar(255);

----Updates the table by adding in the splitted data within the new collum

Update NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress))

--Shows all the data within table so we can see the changes and see if its correct 

Select *
From SQLPortfolio..NashvilleHousing

--Selects the data that we want to change 

Select OwnerAddress
From SQLPortfolio..NashvilleHousing

--Selects the collum OwnerAddress it splits up the in three different way via PARSENAME

Select
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From SQLPortfolio..NashvilleHousing


--Adds a new collum into the table

ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

--Adds a new collum into the table

ALTER TABLE NashvilleHousing
Add OwnerSplitCity Nvarchar(255);

--Adds a new collum into the table

ALTER TABLE NashvilleHousing
Add OwnerSplitState Nvarchar(255);

--Updates the table by adding in the new splitted data in the new collums 

Update NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)

--Updates the table by adding in the new splitted data in the new collums 

Update NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)

--Updates the table by adding in the new splitted data in the new collums 

Update NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)

--Shows all the data within table so we can see the changes and see if its correct 

Select *
From SQLPortfolio..NashvilleHousing

--Selects the distinct values within the collum SoldAsVacant and counts them

Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From SQLPortfolio..NashvilleHousing
Group by SoldAsVacant
order by 2

--Using a clause function it changes the data within the collum

Select SoldAsVacant
, CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END
From SQLPortfolio..NashvilleHousing

--Updates the table by changing certain values within the collum SoldAsVacant to make the table look nicer 

Update NashvilleHousing
SET SoldAsVacant = CASE When SoldAsVacant = 'Y' THEN 'Yes'
	   When SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END

--Creates a temp table in which it creates a row number via selecting unique collums that have unique values. This allows the query to find any duplicating info to delete to clean up the table

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From SQLPortfolio..NashvilleHousing
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress

--This deletes the duplicating rows of data 

Delete 
from RowNumCTE
Where row_num > 1

--Shows all the data within table so we can see what collusm to delete from the table 

Select *
From SQLPortfolio..NashvilleHousing

--Deletes the selected collums of data from the table 

ALTER TABLE SQLPortfolio..NashvilleHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress, SaleDate















