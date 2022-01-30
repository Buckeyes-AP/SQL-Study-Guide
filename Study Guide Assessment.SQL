--------------SELECT *
--------------FROM Invoices
--------------ORDER BY InvoiceTotal

------------SELECT *
------------FROM Vendors
------------WHERE VendorState IN ('DC', 'OH', 'CA');

----------SELECT VendorState, InvoiceTotal
----------FROM Vendors JOIN Invoices 
----------	ON Vendors.VendorID = Invoices.VendorID
----------ORDER BY InvoiceTotal DESC;

--------SELECT MAX (VendorID)
--------FROM Invoices; 

------SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount FROM Invoices GROUP BY VendorID------HAVING AVG(InvoiceTotal) > 2000;

------SELECT VendorName, COUNT(*) AS InvoiceQty, AVG(InvoiceTotal) AS InvoiceAvg FROM Vendors JOIN Invoices------ON Vendors.VendorID = Invoices.VendorID GROUP BY VendorName------HAVING AVG(InvoiceTotal) > 500 ORDER BY InvoiceQty DESC;------SELECT VendorName, COUNT(*) AS InvoiceQty, AVG(InvoiceTotal) AS InvoiceAvg FROM Vendors JOIN Invoices------ON Vendors.VendorID = Invoices.VendorID WHERE InvoiceTotal > 500 GROUP BY VendorName ORDER BY InvoiceQty DESC;------SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount FROM Invoices GROUP BY VendorID------HAVING AVG(InvoiceTotal) > 2000 ORDER BY AverageInvoiceAmount DESC------SELECT VendorName, COUNT(*) AS InvoiceQty, AVG(InvoiceTotal) AS InvoiceAvg FROM Vendors JOIN Invoices------ON Vendors.VendorID = Invoices.VendorID WHERE InvoiceTotal > 500 HAVING AVG(InvoiceTotal) > 500 ORDER BY InvoiceQty DESC;----SELECT *----FROM Invoices; ----SELECT *----FROM InvoiceCopy--INSERT INTO InvoiceCopy--VALUES (97, '456789', '2020-03-01', 8344.50, 0, 0, 1, '2020-03-31', NULL);--INSERT INTO InvoiceCopy--(VendorID, InvoiceNumber)--VALUES (97, '456789');--INSERT INTO InvoiceCopy--(VendorID, InvoiceNumber, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDate, InvoiceDueDate)--VALUES (97, '456789', 8344.50, 0, 0, 1, '2030-03-01', '2020-03-31');--SELECT *--From InvoiceCopy--WHERE VendorID = 12--SELECT * --FROM InvoiceCopy--ORDER BY VendorID--SELECT *--FROM InvoiceCopy--ORDER BY InvoiceID--DELETE InvoiceCopy--WHERE InvoiceID = 37--DELETE InvoiceCopy--WHERE VendorID = 12--INSERT INTO InvoiceCopy--(VendorID, InvoiceNumber, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDate, InvoiceDueDate)--VALUES (12, '456789', 8344.50, 0, 0, 1, '2030-03-01', '2020-03-31');--SELECT * --FROM Vendors--SELECT VendorName, VendorCity + ', ' + ' ' + VendorState + ', ' + ' ' + VendorZipCode AS 'Address'--FROM Vendors