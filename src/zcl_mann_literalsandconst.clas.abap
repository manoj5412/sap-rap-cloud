CLASS zcl_mann_literalsandconst DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_literalsandconst IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  constants c_number type i value 0312.
*
*
*  select from /dmo/carrier
*  fields 'Mann'   as character,
*  03   as integer1,
*  12  as integer2,
*
*  @c_number as constant
*  into table @data(it_results)
*  up to 5 rows.
*
*  out->write( it_results ).

*select from /dmo/carrier
*  fields '19891109'                         as char_8,
*         cast( '19891109' AS CHAR( 4 ) )    as char_4,
*         cast( '19891109' AS NUMC( 8 ) )    as numc_8,
*
*         cast( '19891109' AS INT4 )         as integer,
*         cast( '19891109' AS DEC( 10, 2 ) ) as dec_10_2,
*         cast( '19891109' AS FLTP )         as fltp,
*
*         cast( '19891109' AS DATS )         as date
*  into table @data(it_results)
*  up to 5 rows.
*
*  out->write( it_results ).

*select from /dmo/customer
*fields customer_id,
*title,
*
*case title
*when 'Mr.' then 'Mister'
*when 'Mrs.' then 'Misses'
*else    ' '
*end as title_long
*
*into table @data(it_results)
*up to 5 rows.
*out->write( it_results ).

select from /dmo/flight
fields flight_date,
seats_max,
seats_occupied,
case
when seats_occupied < seats_max then 'Seats Available'
when seats_occupied = seats_max then 'Fully Booked'
when seats_occupied > seats_max then 'Overbooked !'
else    'This is impossible'
end as booking_state

into table @data(it_results)
up to 5 rows.
out->write( it_results ).


  ENDMETHOD.
ENDCLASS.
