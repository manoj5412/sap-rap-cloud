CLASS zcl_mann_workout DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_workout IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TYPES:
      BEGIN OF st_result,
        carrier_id                TYPE /dmo/carrier_id,
        connection_id          TYPE /dmo/connection_id,
        departure_airport      TYPE /dmo/airport_id,
        departure_airport_name TYPE /dmo/airport_name,
      END OF st_RESULT,
      tt_results TYPE STANDARD TABLE OF st_result WITH EMPTY KEY.

    DATA result_table  TYPE tt_results.
    SELECT FROM /dmo/carrier FIELDS * INTO TABLE @DATA(carriers).
    SELECT FROM /dmo/connection FIELDS * INTO TABLE @DATA(connections).
    SELECT FROM /dmo/airport FIELDS * INTO TABLE @DATA(airports).
*connections = CORRESPONDING #( carriers ).
    result_table = VALUE #( FOR line IN connections
*    where (carrier_id = 'LH')
            from 1 to 5
        ( carrier_id             = line-carrier_id
          connection_id          = line-connection_id
          departure_airport      = line-airport_from_id
          departure_airport_name = airports[
                                      airport_id = line-airport_from_id ]-name ) ).

    out->write( result_table ).

  ENDMETHOD.
ENDCLASS.
