USE mdc_ch02;

SELECT 
	MIN(TotalAmount) As Minimum,
    MAX(TotalAmount) As Maximum
    
FROM invoice
