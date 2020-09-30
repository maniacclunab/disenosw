use systimec_pato;

/*pregunta 1 
select c.Nombre,c.Direccion,c.fono,c.comuna,c.email from Cliente c
*/
/*pregunta 2 
select c.Nombre,c.Direccion,c.fono,c.comuna,c.email,r.detalle_residuo,r.peso_residuo from Cliente c 
	Join Retiro r ON c.IdCliente = r.IdCliente
where c.IdCliente=1
*/

/* pregunta 3
select r.direccion,r.comuna,r.detalle_residuo,r.peso_residuo,r.fecha
from Retiro r
where r.fecha between "2020-09-15" and "2020-09-30" 
*/

/*pregunta 4 */
select c.nombre,c.Direccion,c.fono,c.comuna,c.email,count(c.Nombre) as Total_Retiro from Cliente c 
	Join Retiro r ON c.IdCliente = r.IdCliente
group by c.nombre
order by Total_Retiro DESC
limit 1


/*pregunta 5 
select r.direccion,r.comuna,r.detalle_residuo,MAX(r.peso_residuo)
from Retiro r
order by r.peso_residuo desc
*/
/*pregunta 6 
select c.nombre,c.comuna,c.email,r.detalle_residuo,r.peso_residuo
from Cliente c join Retiro r ON c.IdCliente = r.IdCliente
order by c.nombre
*/