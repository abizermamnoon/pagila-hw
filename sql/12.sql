/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
select customer.customer_id, first_name, last_name, sum(amount)
from customer
join payment on customer.customer_id = payment.customer_id
group by customer.customer_id, first_name, last_name
order by last_name;
