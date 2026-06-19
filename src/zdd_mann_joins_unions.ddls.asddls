@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'joins and unions in abap cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_joins_unions as select from /dmo/connection as a inner join /dmo/connection as c on a.carrier_id = c.carrier_id
{
   key  c.carrier_id,
   key c.connection_id,
   c.airport_from_id,
   c.airport_to_id
   
}
