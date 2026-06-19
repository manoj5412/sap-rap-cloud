CLASS zcl_mann_tablereduction DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_tablereduction IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  simple reduction
*  data sum type i.
*  select from /dmo/flight
*  fields seats_occupied
*  into table @data(flights).
*
*  out->write( flights ).
*  sum = reduce #( init total = 0 for line in flights
*  next total += line-seats_occupied ).
*
*  out->write( sum ).



TYPES : BEGIN OF t_results_with_avg,
          occupied TYPE /dmo/plane_seats_occupied,
          maximum TYPE /dmo/plane_seats_max,
          avarage type p length 16 decimals 2,
        END OF t_results_with_avg.

SELECT FROM /dmo/flight
       FIELDS seats_occupied, seats_max
       INTO TABLE @DATA(flights).

DATA(results_with_avg) = REDUCE t_results_with_avg(
    INIT totals_with_avg TYPE t_results_with_avg
         count = 1
    FOR line IN flights
    NEXT totals_with_avg-occupied += line-seats_occupied
         totals_with_avg-maximum += line-seats_max
         totals_with_avg-avarage = totals_with_avg-occupied / count
         count += 1 ).

out->write( results_with_avg ).


  ENDMETHOD.
ENDCLASS.
