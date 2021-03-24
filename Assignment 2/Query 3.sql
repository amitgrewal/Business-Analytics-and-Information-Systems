select
	agrewalcustomers.contactName as "Customer Contact Name", agrewalcustomers.phone as "Phone Number",
    agrewalissues.issueDescription as "Issue Description", agrewalconsultants.lastName as "Consultant's Last Name"
from
	teleworks.agrewalconsultants
    inner join teleworks.agrewalissues
		on agrewalconsultants.consultantID = agrewalissues.consultantID
    inner join teleworks.agrewalcustomers
		on agrewalissues.customerID = agrewalcustomers.customerID
where
	agrewalissues.priorityID = 5
order by
	agrewalconsultants.lastName
