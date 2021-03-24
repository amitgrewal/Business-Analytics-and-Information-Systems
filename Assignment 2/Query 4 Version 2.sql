select
	agrewalcustomers.contactName as "Customer Contact Name", agrewalcustomers.phone as "Phone Number",
	(select count(agrewalissues.issueID) from  teleworks.agrewalissues where agrewalissues.priorityID = 5 and agrewalissues.statusID = 2) as "Total Number of Open Critical Issues",
    (select count(agrewalissues.issueID) from teleworks.agrewalissues where agrewalissues.priorityID = 5 and agrewalissues.statusID = 1) as "Total Number of Closed Critical Issues",
    agrewalissuestatus.statusDescription as "Status Description"
    
from
	teleworks.agrewalcustomers
    left outer join teleworks.agrewalissues on agrewalcustomers.customerID = agrewalissues.customerID
    left outer join teleworks.agrewalissuestatus on agrewalissues.statusID = agrewalissuestatus.statusID
group by
	agrewalissues.issueID, agrewalcustomers.customerID
order by
	agrewalcustomers.contactName, agrewalissuestatus.statusDescription
    