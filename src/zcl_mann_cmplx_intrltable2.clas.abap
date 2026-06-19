CLASS zcl_mann_cmplx_intrltable2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_cmplx_intrltable2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      types: begin of st_connection,
             carrier_id      type /dmo/carrier_id,
             connection_id   type /dmo/connection_id,
             airport_from_id type /dmo/airport_from_id,
             airport_to_id   type /dmo/airport_to_id,
             carrier_name    type /dmo/carrier_name,
           end of st_connection.

      types tt_connections type standard table of   st_connection
                              with non-unique key carrier_id
                                                  connection_id.
    data connections type tt_connections.
    types: begin of st_carrier,
             carrier_id    type /dmo/carrier_id,
             carrier_name  type /dmo/carrier_name,
             currency_code type /dmo/currency_code,
           end of st_carrier.
    types tt_carriers type standard table of st_carrier
                         with non-unique key carrier_id.
    data carriers type tt_carriers.

*    data connection type st_connection.
    data connection like line of connections.

*    connection-carrier_id       = 'NN'.
*    connection-connection_id    = '1234'.
*    connection-airport_from_id  = 'ABC'.
*    connection-airport_to_id    = 'XYZ'.
*    connection-carrier_name     = 'My Airline'.

    connection = value #( carrier_id       = 'NN'
                          connection_id    = '1234'
                          airport_from_id  = 'ABC'
                          airport_to_id    = 'XYZ'
                          carrier_name     = 'My Airline' ).
    append connection to connections.
    out->write(  `--------------------------------` ).
    out->write(  `Example 1: APPEND with Work Area` ).
    out->write(  connections ).

    append value #( carrier_id       = 'NN'
                    connection_id    = '1234'
                    airport_from_id  = 'ABC'
                    airport_to_id    = 'XYZ'
                    carrier_name     = 'My Airline'
                  )
    to connections.
    out->write(  `----------------------------` ).
    out->write(  `Example 2: Append with VALUE` ).
    out->write(  connections ).

    carriers = value #( ( carrier_id = 'AA' carrier_name = 'American Airlines' )
                         ( carrier_id = 'JL' carrier_name = 'Japan Airlines' )
                         ( carrier_id = 'SQ' carrier_name = 'Singapore Airlines' ) ).

    out->write(  `-----------------------------------------` ).
    out->write(  `Example 3: Fill Internal Table with VALUE` ).
    out->write(  carriers ).

    connections = corresponding #( carriers ).

    out->write(  `--------------------------------------------` ).
    out->write(  `Example 4: CORRESPONDING for Internal Tables` ).
    out->write(  data = carriers
                 name = `Source Table CARRIERS:`).
    out->write(  data = connections
                 name = `Target Table CONNECTIONS:`).


  ENDMETHOD.
ENDCLASS.
