@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'unions'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_unions as select from /DMO/I_Carrier
{
    @EndUserText.label: 'category'
    key 'Airline' as type,
    key AirlineID as id,
    Name
}
where CurrencyCode = 'GDP'

union all

select from /DMO/I_Airport
{
//@EndUserText.label: 'category'
key 'Airport' as type,
key AirportID as id,
Name
}
where City = 'London'
