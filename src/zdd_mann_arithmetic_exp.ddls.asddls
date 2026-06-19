@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'arithmetic expression in abap'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_arithmetic_exp as select from /dmo/flight
{
    seats_max - seats_occupied as seats_available,
    (
  cast( seats_occupied as abap.fltp )
  * 100.0
)
/ cast( seats_max as abap.fltp )
as percentage_fltp
}
