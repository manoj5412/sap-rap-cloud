CLASS zcl_mann_cmplx_intrltable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_cmplx_intrltable IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

types: begin of st_connection,
             carrier_id      type /dmo/carrier_id,
             connection_id   type /dmo/connection_id,
             airport_from_id type /dmo/airport_from_id,
             airport_to_id   type /dmo/airport_to_id,
             carrier_name    type /dmo/carrier_name,
           end of st_connection.

        data numbers type table of i.
        data connections type table of st_connection.

    out->write(  `--------------------------------------------` ).
    out->write(  `Example 1: Simple and Complex Internal Table` ).
    out->write( data = numbers
                name = `Simple Table NUMBERS:`).
    out->write( data = connections
                name = `Complex Table CONNECTIONS:`).

    data connections_1 type table of st_connection.
    data connections_2 type standard table of st_connection.
    data connections_3 type sorted table of st_connection with non-unique key airport_from_id airport_to_id.
    data connections_4 type hashed table of st_connection with unique key carrier_id connection_id.

    types tt_connections type sorted table of st_connection with unique key carrier_id connection_id.
    data connections_5 type tt_connections.

    data flights  type /dmo/t_flight.

    out->write(  `------------------------------------------` ).
    out->write(  `Example 4: Global Table TYpe /DMO/T_FLIGHT` ).
    out->write(  data = flights
                 name = `Internal Table FLIGHTS:` ).
  ENDMETHOD.
ENDCLASS.
