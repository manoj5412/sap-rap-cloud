define view entity ZDD_MANN_INPUT_PARAMETER

  with parameters

    @EndUserText.label: 'X for free seats, Space for occupied'
    FreeOrOccupied : abap.char(1),

    BookingFee     : /dmo/booking_fee,

    TargetCurrency : waers,

    @EndUserText.label: 'Only consider flights after this date'
    FirstFlightDate : /dmo/flight_date

  as select from /dmo/flight
{
  key carrier_id,
  key connection_id,
  key flight_date
}
