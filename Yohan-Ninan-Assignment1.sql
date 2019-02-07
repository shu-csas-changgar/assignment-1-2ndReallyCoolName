select a.first_name, a.last_name from actor a where first_name = 'penelope';

select f.title, a.first_name, a.last_name from film f, actor a, film_actor fa where a.actor_id=fa.actor_id and f.film_id = fa.film_id and f.title = "zoolander fiction";

select f.title, a.first_name, a.last_name from film f, actor a, film_actor fa where a.actor_id=fa.actor_id and f.film_id = fa.film_id and a.first_name= "jennifer" and a.last_name = "davis";

select c.first_name, c.last_name, r.return_date, f.title from customer c join rental r on r.customer_id = c.customer_id 
join inventory i on i.inventory_id = r.inventory_id inner join film f on i.film_id = f.film_id
where c.customer_id = 11 and r.return_date is null;

select f.title, f.category from film_list f where f.category = "Animation";

select c.first_name, c.last_name, f.title, p.amount from customer c inner join rental r on c.customer_id = r.customer_id 
inner join inventory i on i.inventory_id = r.inventory_id join payment p on p.rental_id = r.rental_id, film f
where i.film_id = f.film_id and r.inventory_id = i.inventory_id and c.customer_id = 95 and f.title = "closer bang"; 

select sf.first_name, sf.last_name, c.first_name, c.last_name, f.title 
from  staff sf inner join customer c on c.store_id = sf.store_id, film f
where c.first_name = "marie" and c.last_name = "turner" and f.title = "chainsaw uptown";