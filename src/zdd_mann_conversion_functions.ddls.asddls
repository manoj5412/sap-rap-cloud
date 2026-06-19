@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'conversion functions in abap cds'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZDD_MANN_CONVERSION_FUNCTIONS
  as select from /dmo/travel
{
   key travel_id,
  @Semantics.amount.currencyCode : 'currency_code'
  total_price,
  currency_code,
   cast( 'INR' as abap.cuky ) as TargetCurrency,
   @Semantics.amount.currencyCode: 'TargetCurrency'

  currency_conversion(
    amount             => total_price,
    source_currency    => currency_code,
    target_currency    => cast( 'INR' as abap.cuky ),
    exchange_rate_date => begin_date,
    exchange_rate_type => 'M',
    error_handling     => 'SET_TO_NULL'
  ) as TotalPriceEUR
}
