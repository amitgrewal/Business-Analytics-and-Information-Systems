select
	agrewalconsultants.consultantID as "Consultant ID", agrewalconsultants.firstName as "First Name",
    agrewalconsultants.lastName as "Last Name", email, count(issueID) as "Number of Closed Issues"
from
	teleworks.agrewalconsultants inner join teleworks.agrewalissues
	on agrewalconsultants.consultantID = agrewalissues.consultantID
where
	statusID = 1
group by
	agrewalconsultants.consultantID
order by
	count(issueID) DESC;
    