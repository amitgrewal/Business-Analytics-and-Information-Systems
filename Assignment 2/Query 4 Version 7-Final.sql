select
	agrewalcustomers.contactName as "Customer Contact Name", agrewalcustomers.phone as "Phone Number",
    count(agrewalissues.statusID) as "Number of Issues", agrewalissuestatus.statusDescription as "Status Description"
from
	teleworks.agrewalcustomers
    left outer join teleworks.agrewalissues
		on agrewalcustomers.customerID = agrewalissues.customerID
    left outer join teleworks.agrewalissuestatus
		on agrewalissues.statusID = agrewalissuestatus.statusID
group by
	agrewalissues.statusID, agrewalcustomers.customerID
order by
	agrewalcustomers.contactName, agrewalissuestatus.statusDescription
