select
	agrewalcustomers.customerID, agrewalcustomers.contactName as "Customer Contact Name", agrewalcustomers.phone as "Phone Number",
    count(agrewalissues.priorityID = 5 and agrewalissues.statusID = 2) as "Number of Open Critical Issues",
    count(agrewalissues.priorityID = 5 and agrewalissues.statusID = 1) as "Number of Closed Critical Issues",
    agrewalissuestatus.statusDescription as "Status Description", sum(IF(agrewalissues.priorityID = 5 and agrewalissues.statusID = 2, 1, 0)) as "Open Critical Issues", sum(IF(agrewalissues.priorityID = 5 and agrewalissues.statusID = 1, 1, 0)) as "Closed Critical Issues"
    
from
	teleworks.agrewalcustomers
    left outer join teleworks.agrewalissues on agrewalcustomers.customerID = agrewalissues.customerID
    left outer join teleworks.agrewalissuestatus on agrewalissues.statusID = agrewalissuestatus.statusID
group by
	agrewalcustomers.customerID
order by
	agrewalcustomers.contactName
