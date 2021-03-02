--PROCEDIMIENTO ALMACENADO

create or replace function total_servicios(varchar ,integer) returns bigint
as
$total_servicios$
select distinct sum(total_servicio) from servicio natural join solicitud--,solicitud,solicitud_servicio
where 
solicitud.id_solicitud = servicio.id_solicitud and numero_solicitud = '1'

$total_servicios$
language SQL;

select total_servicios('total_servicio',1);