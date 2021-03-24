select distinct
	agrewalcustomers.contactName as "Customer Contact Name", agrewalconsultants.lastName as "Consultant's Last Name"
from
	teleworks.agrewalconsultants
    inner join teleworks.agrewalissues
		on agrewalconsultants.consultantID = agrewalissues.consultantID
    inner join teleworks.agrewalcustomers
		on agrewalissues.customerID = agrewalcustomers.customerID
where
	agrewalcustomers.state = "MI"
order by
	agrewalconsultants.lastName
    