@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'example built in functions'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_builtinfunctions as select from /dmo/flight
{
    div( seats_occupied * 100 , seats_max )
  as percentage_int,
  
  division( seats_occupied * 100, seats_max, 2 ) as percentage_dec
}
