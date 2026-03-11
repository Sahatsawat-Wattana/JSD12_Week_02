select i.name,r.quantity_needed,i.unit from recipeitems r
join menuitems m on m.item_id = r.item_id
join ingredients i on i.ingredient_id = r.ingredient_id
where m.name = 'Bacon Cheeseburger';