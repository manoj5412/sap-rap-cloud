CLASS zcl_mann_cmplx_intrltable3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_cmplx_intrltable3 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  types: begin of st_connection,
         carrier_id type /dmo/carrier_id,
         connection_id type /dmo/connection_id,
         airport_from_id type /dmo/airport_from_id,
         airport_to_id type /dmo/airport_to_id,
         carrier_name type /dmo/carrier_name,
         end of st_connection.

   types tt_connections type sorted table of st_connection with non-unique key carrier_id connection_id.

   data connections type tt_connections.
   data connection like line of connections.

   types: begin of st_carrier,
          carrier_id type /dmo/carrier_id,
          currency_code type /dmo/currency_code,
          end of st_carrier.

          data carriers type standard table of st_carrier with non-unique key carrier_id.
          data carrier like line of carriers.

          connections = value #(  ( carrier_id      = 'JL'
                              connection_id   = '0408'
                              airport_from_id = 'FRA'
                              airport_to_id   = 'NRT'
                              carrier_name    = 'Japan Airlines'
                            )
                            ( carrier_id      = 'AA'
                              connection_id   = '0017'
                              airport_from_id = 'MIA'
                              airport_to_id   = 'HAV'
                              carrier_name    = 'American Airlines'
                            )
                            ( carrier_id      = 'SQ'
                              connection_id   = '0001'
                              airport_from_id = 'SFO'
                              airport_to_id   = 'SIN'
                              carrier_name    = 'Singapore Airlines'
                            )
                            ( carrier_id      = 'UA'
                              connection_id   = '0078'
                              airport_from_id = 'SFO'
                              airport_to_id   = 'SIN'
                              carrier_name    = 'United Airlines'
                            )
                           ).
            carriers = value #(  (  carrier_id    = 'SQ'
                            currency_code = ' '
                         )
                         (  carrier_id    = 'JL'
                            currency_code = ' '
                         )
                         (  carrier_id    = 'AA'
                            currency_code = ' '
                         )
                         (  carrier_id    = 'UA'
                            currency_code = ' '
                         )
                      ).

    out->write(  `--------------------------------------------` ).
    out->write(  `Example 1: Table Expressions with Key Access` ).
    out->write(  data = connections
                 name = `Internal Table CONNECTIONS: ` ).
    connection = connections[ carrier_id    = 'SQ'
                              connection_id = '0001' ].
    out->write(  data = connection
                 name = `CARRIER_ID = 'SQ' AND CONNECTION_ID = '001':` ).
    connection = connections[ airport_from_id = 'SFO'
                              airport_to_id   = 'SIN' ].
    out->write(  data = connection
                 name = `AIRPORT_FROM_ID = 'SFO' AND AIRPORT_TO_ID = 'SIN':` ).

    out->write(  `-------------------------------` ).
    out->write(  `Example 2: LOOP with Key Access` ).
    LOOP AT connections INTO connection
                       WHERE airport_from_id <> 'MIA'.
      out->write( data = connection
                  name = |This is row number { sy-tabix }: | ).
    ENDLOOP.

    out->write(  `-----------------------------------` ).
    out->write(  `Example 3: MODIFY TABLE (key access` ).
    out->write(  data = carriers
                 name = `Table CARRRIERS before MODIFY TABLE:`).
    carrier = carriers[  carrier_id = 'JL' ].
    carrier-currency_code = 'JPY'.
    MODIFY TABLE carriers FROM carrier.
    out->write(  data = carriers
                 name = `Table CARRRIERS after MODIFY TABLE:`).

    out->write(  `--------------------------------` ).
    out->write(  `Example 4: MODIFY (index access)` ).
    carrier-carrier_id    = 'LH'.
    carrier-currency_code = 'EUR'.
    MODIFY carriers FROM carrier INDEX 1.
    out->write(  data = carriers
                 name = `Table CARRRIERS after MODIFY:`).

    out->write(  `----------------------------` ).
    out->write(  `Example 5: MODIFY  in a LOOP` ).
    LOOP AT carriers INTO carrier
                    WHERE currency_code IS INITIAL.
      carrier-currency_code = 'USD'.
      MODIFY carriers FROM carrier.
    ENDLOOP.
    out->write(  data = carriers
                 name = `Table CARRRIERS after the LOOP:`).


  ENDMETHOD.
ENDCLASS.
