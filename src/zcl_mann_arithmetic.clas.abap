CLASS zcl_mann_arithmetic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_arithmetic IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  select from /dmo/flight
*  fields seats_max,
*  seats_occupied,
*  seats_max - seats_occupied  as seats_available,
*  ( cast( seats_occupied as fltp )
*  * cast( 100 as fltp )
*  ) / cast( seats_max as fltp )  as percentage_fltp
*  into table @data(it_results)
*  up to 5 rows.
*  out->write( it_results ).



*select from /dmo/flight
*fields seats_max,
*seats_occupied,
*( cast( seats_occupied as fltp )
** cast( 100 as fltp )
*) / cast( seats_max as fltp )    as percentage_fltp,
*div( seats_occupied * 100 , seats_max )  as percentage_int,
*division( seats_occupied * 100, seats_max, 2 )  as percentage_dec
*into table @data(it_results)
*up to 5 rows.
*out->write( it_results ).



*select from /dmo/customer
*fields customer_id,
*title && ' ' && first_name && ' ' && last_name  as full_name,
*street && ',' && postal_code && ' ' && city as address_expr
*into table @data(it_results)
*up to 5 rows.
*out->write( it_results ).



*select from /dmo/customer
*  fields customer_id,
*         street && ',' && ' ' && postal_code && ' ' && city AS address_expr,
*         concat_with_space( street,
*                            concat_with_space( postal_code, city, 1 ),
*                            1 ) as address_func
*  into table @data(it_results)
*  up to 5 rows.
*out->write( it_results ).



*select from /dmo/carrier
*fields carrier_id,
*name,
*upper( name ) as name_upper,
*lower( name ) as name_lower,
*initcap( name ) as name_initcap
*into table @data(it_results).
*out->write( it_results ).



select from /dmo/flight
fields flight_date,
cast( flight_date as char( 8 ) ) as flight_date_raw,
left( flight_date, 4 ) as year,
right( flight_date, 2 ) as day,
substring( flight_date, 5,2 ) as month
into table @data(it_results)
up to 5 rows.
out->write( it_results ).


  ENDMETHOD.
ENDCLASS.
