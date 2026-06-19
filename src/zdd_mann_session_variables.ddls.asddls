@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Session Variables Example'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZDD_MANN_SESSION_VARIABLES
  as select from /DMO/I_Flight
{
  key ConnectionID,
  key FlightDate,
  
  CurrencyCode,

  _Currency._Text[
   Language = $session.system_language
  ].CurrencyName as CurrencyName
}
where FlightDate > $session.system_date
