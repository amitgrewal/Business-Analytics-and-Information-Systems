select
	agrewalcustomers.customerID, agrewalcustomers.contactName as "Customer Contact Name", agrewalcustomers.phone as "Phone Number",
    count(agrewalissues.priorityID = 5 and agrewalissues.statusID = 2) as "Number of Open Critical Issues",
    count(agrewalissues.priorityID = 5 and agrewalissues.statusID = 1) as "Number of Closed Critical Issues",
    agrewalissuestatus.statusDescription as "Status Description", count( agrewalissues.priorityID = 5)
    
from
	teleworks.agrewalcustomers
    inner join teleworks.agrewalissues on agrewalcustomers.customerID = agrewalissues.customerID
    inner join teleworks.agrewalissuestatus on agrewalissues.statusID = agrewalissuestatus.statusID
group by
	agrewalcustomers.customerID
order by
	agrewalcustomers.contactName

    