@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'distinct results in abap cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_distinct_results as select distinct from /dmo/connection
{
    airport_from_id,
    distance_unit
}
