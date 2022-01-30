CREATE OR ALTER Procedure DisplayVendorsByAccountNos 
	@LowAccountNo int = 0, 
	@HighAccountNo int = 1000

AS  

SELECT VendorName, DefaultAccountNo, AccountDescription 
FROM Vendors v
JOIN GLAccounts g
ON v.DefaultAccountNo = g.AccountNo
WHERE DefaultAccountNo BETWEEN @LowAccountNo AND @HighAccountNo
ORDER BY VendorName;