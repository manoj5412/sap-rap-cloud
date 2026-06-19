@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'aggrigations in abap cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_aggregations as select from /dmo/connection
{
    max( distance ) as maximum,
    min( distance ) as minimum,
    sum( distance ) as total,
    count( * ) as count_all,
    count( distinct airport_from_id ) as count_dist,
    avg( distance as abap.fltp ) as average
    
}
