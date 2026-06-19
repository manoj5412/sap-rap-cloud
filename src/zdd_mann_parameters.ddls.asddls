@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Input Parameter Declaration'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZDD_MANN_PARAMETERs

  with parameters

    @EndUserText.label: 'X for free seats, Space for occupied'
    FreeOrOccupied : abap.char(1),

    BookingFee : /dmo/booking_fee,

    TargetCurrency : waers,

    @EndUserText.label: 'Only consider flights after this date'
    FirstFlightDate : /dmo/flight_date

  as select from /dmo/flight
{
      $parameters.TargetCurrency as CurrencyCode,

      case $parameters.FreeOrOccupied
        when 'X' then seats_max - seats_occupied
        else seats_occupied
      end as Seats,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion(
          amount             => price,
          source_currency    => currency_code,
          target_currency    => cast( 'EUR' as abap.cuky ),
          exchange_rate_date => $session.system_date,
          error_handling     => 'SET_TO_NULL'
      ) as PriceConverted
}
where flight_date >= $parameters.FirstFlightDate
