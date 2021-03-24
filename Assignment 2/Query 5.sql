select
	agrewalcustomers.contactName as "Customer Contact Name", state as "State",
    concat("$ ", convert(count(issueID)*20, CHAR)) as "Costs of Support"
from
	teleworks.agrewalcustomers inner join teleworks.agrewalissues
		on agrewalcustomers.customerID = agrewalissues.customerID
where
	agrewalissues.statusID = 1
group by
	agrewalissues.customerID
order by
	count(issueID)*20 DESC;
