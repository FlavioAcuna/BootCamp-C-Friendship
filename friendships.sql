use amigos;

select users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name  from friendships
left join users on friendships.user_id = users.id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id;

/*1. Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de que sus nombres se muestren en los resultados.*/
select users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name  from friendships
left join users on friendships.user_id = users.id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id 
where user2.first_name="kermit";
/*2. Devuelve el recuento de todas las amistades.*/
select count(friendships.id) as "Recuento amistades"   from friendships
left join users on friendships.user_id = users.id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id;

/*3. Descubre quién tiene más amigos y devuelve el recuento de sus amigos. */
select users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name  from friendships
left join users on friendships.user_id = users.id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id 
;
/*4. Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark. */

/*5. Devuelve a los amigos de Eli en orden alfabético. */

/*6. Eliminar a Marky Mark de los amigos de Eli.*/
delete f from friendships f
left join users on f.user_id = users.id
LEFT JOIN users as user2 ON f.friend_id = user2.id
where users2.first_name="marky";
/*7. Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos */
select concat(users.first_name," ",users.last_name)as "Name",concat(user2.first_name, " ",user2.last_name) as "Friend Name"  from friendships
left join users on friendships.user_id = users.id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id ;